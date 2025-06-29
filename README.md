
# ❄️ Snowflake Iceberg Table Setup with External Volume

This document outlines the steps to create **Iceberg tables in Snowflake** backed by **external volumes (ADLS Gen2 or AWS S3)** for seamless integration with **Microsoft Fabric and OneLake**.

## 🧱 Objective

Enable large-scale analytics using **Snowflake Iceberg tables**, while avoiding data duplication and enabling direct access from **Microsoft Fabric** using **shortcuts**. This allows Microsoft Fabric to virtualize the data in **Delta Lake format**.

---

## 📂 Repository Structure
/snowflake-iceberg-setup/  
│  
├── scripts/  
│ ├── Initial_setup.sql  
│ ├── external_volume.sql  
│ └── iceberg_table_load.sql  
│  
└── README.md (this file)
