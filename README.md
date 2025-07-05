# copy2compare.sh

## 📄 Description

`copy2compare.sh` is a simple Bash tool used to **copy folder contents** and then **compare the source and destination to verify consistency** after copying.

---

## 💡 Usage

### Step 1: Give execute permission
```bash
chmod +x copy2compare.sh
```
### Step 2: Run the script
```bash
./copy2compare.sh <Source Path> <Destination Path>
```

- `<Source Path>`: The folder you want to copy from.
- `<Destination Path>`: The folder you want to copy to.

⚠️ Note: Both the source and destination paths **must already exist**.

---

## ✅ Workflow

1. Check if the number of parameters is correct and if the paths exist.
2. Copy the contents of the source folder to the destination folder.
3. Compare both folders and display `PASS.` if they match or `FAIL.` if differences are found.

---

## 🗂 Example

```bash
./copy2compare.sh /home/user/source /home/user/backup
```

---

## 📅 After execution

The script will also print the current date and time when finished.

---
