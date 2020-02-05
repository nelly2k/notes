# Athena
- SQL engine overlaid on S3 base on Presto
- query raw data object as the sit in an S3 bucket
- Use or convert your data to Parquet format if possible for a big performance jump
- Similar in concept to [Redshift](./redshift.md) Spectrum but
    - Use Athena: data lives in s3, no joints with other data sources
    - Use Redshift if you want to join S3 data with existing RedShift tables or create union products
- supports DDL statements and ANSI SQL
- supported data formats: json, apache parquet, apache ORC

