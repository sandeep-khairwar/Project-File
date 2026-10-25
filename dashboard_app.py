import streamlit as st
import pandas as pd
import plotly.express as px
import io

st.set_page_config(
    page_title="Smart Business Insights",
    page_icon="📊",
    layout="wide"
)

# -----------------------------
# Page Design
# -----------------------------
st.markdown("""
<style>
.stApp {
    background-color: #f5f7fb;
}

[data-testid="stMetric"] {
    background-color: white;
    padding: 18px;
    border-radius: 12px;
    border: 1px solid #e1e5eb;
}

h1, h2, h3 {
    color: #17365d;
}
</style>
""", unsafe_allow_html=True)

st.title("📊 Sandeep's Business Insights")
st.write(
    "Upload any Excel or CSV file to clean data, "
    "analyze performance, and generate business insights automatically."
)

# -----------------------------
# Upload File
# -----------------------------
uploaded_file = st.file_uploader(
    "📁 Upload Your Excel or CSV File",
    type=["xlsx", "csv"]
)

if uploaded_file is not None:

    try:

        # -----------------------------
        # Read File
        # -----------------------------
        if uploaded_file.name.lower().endswith(".csv"):
            df = pd.read_csv(uploaded_file)
        else:
            df = pd.read_excel(uploaded_file)

        st.success("File uploaded successfully!")

        # -----------------------------
        # Basic Cleaning
        # -----------------------------
        data = df.copy()

        # Remove spaces from column names
        data.columns = [
            str(col).strip()
            for col in data.columns
        ]

        # Remove extra spaces from text
        for col in data.select_dtypes(
            include=["object", "string"]
        ).columns:

            data[col] = data[col].map(
                lambda x: x.strip()
                if isinstance(x, str)
                else x
            )

        # Remove duplicate rows
        original_rows = len(data)

        data = data.drop_duplicates()

        duplicates_removed = (
            original_rows - len(data)
        )

        # -----------------------------
        # Try to detect date columns
        # -----------------------------
        date_columns = []

        for col in data.columns:

            if data[col].dtype == "object":

                converted = pd.to_datetime(
                    data[col],
                    errors="coerce"
                )

                valid_ratio = converted.notna().mean()

                if valid_ratio >= 0.70:

                    data[col] = converted
                    date_columns.append(col)

        # -----------------------------
        # Identify column types
        # -----------------------------
        numeric_columns = data.select_dtypes(
            include="number"
        ).columns.tolist()

        text_columns = data.select_dtypes(
            include=["object", "string", "category"]
        ).columns.tolist()

        # Remove detected dates from text list
        text_columns = [
            col for col in text_columns
            if col not in date_columns
        ]

        # -----------------------------
        # KPI SECTION
        # -----------------------------
        st.header("📈 Business Overview")

        col1, col2, col3, col4 = st.columns(4)

        col1.metric(
            "Total Rows",
            f"{len(data):,}"
        )

        col2.metric(
            "Total Columns",
            f"{len(data.columns):,}"
        )

        col3.metric(
            "Duplicates Removed",
            f"{duplicates_removed:,}"
        )

        missing_values = int(
            data.isna().sum().sum()
        )

        col4.metric(
            "Missing Values",
            f"{missing_values:,}"
        )

        st.divider()

        # -----------------------------
        # AUTOMATIC NUMERIC ANALYSIS
        # -----------------------------
        if numeric_columns:

            st.header("💰 Numeric Analysis")

            # Select numeric column
            selected_numeric = st.selectbox(
                "Select a numeric column",
                numeric_columns
            )

            col1, col2, col3 = st.columns(3)

            total_value = data[
                selected_numeric
            ].sum()

            average_value = data[
                selected_numeric
            ].mean()

            maximum_value = data[
                selected_numeric
            ].max()

            col1.metric(
                f"Total {selected_numeric}",
                f"{total_value:,.2f}"
            )

            col2.metric(
                f"Average {selected_numeric}",
                f"{average_value:,.2f}"
            )

            col3.metric(
                f"Maximum {selected_numeric}",
                f"{maximum_value:,.2f}"
            )

            # Histogram
            fig_hist = px.histogram(
                data,
                x=selected_numeric,
                title=f"{selected_numeric} Distribution",
                template="plotly_white"
            )

            st.plotly_chart(
                fig_hist,
                use_container_width=True
            )

        # -----------------------------
        # CATEGORY ANALYSIS
        # -----------------------------
        if text_columns:

            st.header("📊 Category Analysis")

            selected_category = st.selectbox(
                "Select a category column",
                text_columns
            )

            category_data = (
                data[selected_category]
                .fillna("Unknown")
                .astype(str)
                .value_counts()
                .reset_index()
            )

            category_data.columns = [
                selected_category,
                "Count"
            ]

            category_data = category_data.head(15)

            fig_category = px.bar(
                category_data,
                x=selected_category,
                y="Count",
                text="Count",
                title=f"Top Categories - {selected_category}",
                template="plotly_white"
            )

            st.plotly_chart(
                fig_category,
                use_container_width=True
            )

        # -----------------------------
        # DATE ANALYSIS
        # -----------------------------
        if date_columns:

            st.header("📅 Time Analysis")

            selected_date = st.selectbox(
                "Select a date column",
                date_columns
            )

            date_data = (
                data
                .dropna(subset=[selected_date])
                .copy()
            )

            if len(date_data) > 0:

                date_data["Month"] = (
                    date_data[selected_date]
                    .dt.to_period("M")
                    .astype(str)
                )

                monthly_data = (
                    date_data
                    .groupby("Month")
                    .size()
                    .reset_index(name="Records")
                )

                fig_date = px.line(
                    monthly_data,
                    x="Month",
                    y="Records",
                    markers=True,
                    title="Monthly Record Trend",
                    template="plotly_white"
                )

                st.plotly_chart(
                    fig_date,
                    use_container_width=True
                )

        # -----------------------------
        # BUSINESS INSIGHTS
        # -----------------------------
        st.header("💡 Automatic Business Insights")

        insights = []

        # Row insight
        insights.append(
            f"Dataset contains {len(data):,} rows "
            f"and {len(data.columns):,} columns."
        )

        # Missing data insight
        if missing_values > 0:

            insights.append(
                f"The dataset contains "
                f"{missing_values:,} missing values "
                f"that may require cleaning."
            )

        else:

            insights.append(
                "The dataset does not contain "
                "any missing values."
            )

        # Duplicate insight
        if duplicates_removed > 0:

            insights.append(
                f"{duplicates_removed:,} duplicate rows "
                f"were removed during cleaning."
            )

        else:

            insights.append(
                "No duplicate rows were found."
            )

        # Numeric insights
        for col in numeric_columns[:5]:

            total = data[col].sum()
            average = data[col].mean()
            maximum = data[col].max()

            insights.append(
                f"{col}: total = {total:,.2f}, "
                f"average = {average:,.2f}, "
                f"maximum = {maximum:,.2f}."
            )

        # Category insights
        for col in text_columns[:5]:

            counts = (
                data[col]
                .fillna("Unknown")
                .astype(str)
                .value_counts()
            )

            if len(counts) > 0:

                top_category = counts.index[0]
                top_count = counts.iloc[0]

                insights.append(
                    f"{col}: highest category is "
                    f"'{top_category}' "
                    f"with {top_count:,} records."
                )

        for insight in insights:

            st.info("💡 " + insight)

        # -----------------------------
        # DATA PREVIEW
        # -----------------------------
        st.header("📋 Cleaned Data")

        st.dataframe(
            data.head(100),
            use_container_width=True,
            hide_index=True
        )

        # -----------------------------
        # DOWNLOAD
        # -----------------------------
        st.header("📥 Download Cleaned Data")

        csv_data = data.to_csv(
            index=False
        ).encode("utf-8-sig")

        st.download_button(
            "Download CSV",
            data=csv_data,
            file_name="cleaned_data.csv",
            mime="text/csv"
        )

        excel_buffer = io.BytesIO()

        with pd.ExcelWriter(
            excel_buffer,
            engine="openpyxl"
        ) as writer:

            data.to_excel(
                writer,
                index=False,
                sheet_name="Cleaned Data"
            )

        st.download_button(
            "Download Excel",
            data=excel_buffer.getvalue(),
            file_name="cleaned_data.xlsx",
            mime="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
        )

    except Exception as e:

        st.error(
            f"Error while processing the file: {e}"
        )

else:

    st.info(
        "Upload any Excel or CSV file to generate "
        "automatic business insights."
    )