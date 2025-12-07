# 📘 ALXprodev‑Devops  

## Advanced Shell Automation with Pokémon API  

This repository contains a series of **DevOps automation scripts** written in **Bash**. Each task demonstrates advanced shell scripting concepts such as API requests, JSON parsing, batch processing, error handling, and parallel execution.  

---

## 📂 Project Structure

```folder
ALXprodev-Devops/
└── Advanced_shell/
    ├── apiAutomation-0x00
    ├── data_extraction_automation-0x01
    ├── batchProcessing-0x02
    ├── summaryData-0x03
    └── batchProcessing-0x04
```

---

## 🚀 Tasks Overview

### **0. API Request Automation** (`apiAutomation-0x00`)

- Automates a request to the **Pokémon API** for Pikachu.  
- Saves the response to `data.json`.  
- Logs errors to `errors.txt` if the request fails.  

**Run:**

```bash
./apiAutomation-0x00
jq . < data.json | head -n 50
```

---

### **1. Extract Pokémon Data** (`data_extraction_automation-0x01`)

- Parses `data.json` using **jq, awk, sed**.  
- Extracts **name, type, height, weight**.  
- Formats output in a human‑readable sentence:  

  ```bash
  Pikachu is of type Electric, weighs 6kg, and is 0.4m tall.
  ```

**Run:**

```bash
./data_extraction_automation-0x01
```

---

### **2. Batch Pokémon Data Retrieval** (`batchProcessing-0x02`)

- Loops through a list of Pokémon:  
  **Bulbasaur, Ivysaur, Venusaur, Charmander, Charmeleon**.  
- Fetches data from the API and saves each to `pokemon_data/<name>.json`.  
- Handles rate‑limiting with a delay between requests.  
- Logs errors to `errors.txt`.  

**Run:**

```bash
./batchProcessing-0x02
```

---

### **3. Summarize Pokémon Data** (`summaryData-0x03`)

- Reads all JSON files in `pokemon_data/`.  
- Extracts **name, height, weight**.  
- Generates a CSV report: `pokemon_report.csv`.  
- Uses **awk** to calculate average height and weight.  

**Sample Output:**

```bash
CSV Report generated at: pokemon_report.csv

Name,Height (m),Weight (kg)
Bulbasaur,0.7,6.9
Charmander,0.6,8.5
Charmeleon,1.1,19.0
Ivysaur,1.0,13.0
Venusaur,2.0,100.0

Average Height: 1.08 m
Average Weight: 29.48 kg
```

**Run:**

```bash
./summaryData-0x03
```

---

### **4. Error Handling and Retry Logic** (`batchProcessing-0x02`)

- Enhanced version of Task 2.  
- Retries failed API requests up to **3 times**.  
- Logs persistent failures to `errors.txt`.  
- Skips failed Pokémon gracefully.  

**Run:**

```bash
./batchProcessing-0x02
```

---

### **5. Parallel Data Fetching** (`batchProcessing-0x04`)

- Fetches Pokémon data in **parallel** using background processes.  
- Ensures all processes complete with `wait`.  
- Saves results to `pokemon_data/<name>.json`.  
- Logs errors to `errors.txt`.  

**Run:**

```bash
./batchProcessing-0x04
```

---

## 🛠️ Tools & Concepts Used

- **curl** → API requests  
- **jq** → JSON parsing  
- **awk** → text processing & calculations  
- **sed** → text formatting  
- **bash arrays & loops** → batch automation  
- **error handling & retry logic** → robust scripting  
- **parallel execution** → faster data retrieval  


---

## 📊 Learning Outcomes

- Automating API requests with shell scripting.  
- Parsing and transforming JSON data.  
- Handling errors and implementing retry logic.  
- Batch processing with delays to avoid rate‑limits.  
- Parallel execution with background processes and `wait`.  
- Generating structured reports (CSV) with averages.  

---

## 🎯 Final Note

This project demonstrates how **DevOps engineers** can leverage **shell scripting** to automate API interactions, process data, and build robust pipelines. It blends **clarity, maintainability, and elegance** — ensuring scripts are reusable, readable, and production‑ready.  

