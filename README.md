# 🛡️ Intrusion Detection and Response System (IDRS)

## 🌐 Project Overview

This project represents the evolution from a **passive Network Intrusion Detection System (NIDS)** into an **active Intrusion Detection and Response System (IDRS)** — a system that doesn’t just detect malicious activity but **automatically responds** to neutralize threats in real time.

The core objective was to move from **detection to autonomous defense**, building a system capable of **detecting, deciding, and defending** without manual intervention.  
Traditional IDS tools only raise alarms; this one responds instantly using **firewall automation**.

---

## ⚙️ Technical Details

**Execution Environment:** Kali Linux Virtual Machine running on a virtualized network  
**Detected IP Range:** `10.0.4.0/22` (verified via `ifconfig` output)  

**Technology Stack:**
- 🧩 **Snort 3** – real-time network intrusion detection  
- 🔥 **Linux IPTables** – firewall control and dynamic blocking  
- 🐍 **Python Automation Script** – bridges Snort logs with IPTables commands  

### 🔁 System Logic

1. **Snort 3** continuously monitors network traffic.  
2. When a suspicious pattern (e.g., port scan, reconnaissance, or unauthorized access) is detected, it logs the event.  
3. A **Python script** parses Snort logs and extracts the attacker’s IP address.  
4. The script then triggers **IPTables commands** to block the attacker for a set duration.  
5. Every defensive action is logged for post-incident review.

This **closed-loop automation** transforms a passive IDS into an **adaptive defense system** that minimizes exposure time and enhances network resilience.

---

## 🧠 Workflow Diagram

Incoming Traffic → Snort Detection → Log Analysis Script → IPTables Firewall → IP Blocked


---

## 🧩 Challenges Faced

| **Challenge** | **Description** | **Resolution** |
|----------------|-----------------|----------------|
| Permission conflicts | Automation scripts initially failed to execute IPTables rules. | Implemented `sudo` privileges and adjusted user group permissions. |
| Network interface mismatches | VM interfaces weren’t capturing packets consistently. | Verified interfaces using `ifconfig` and modified Snort’s input bindings. |
| Firewall rule persistence | IPTables rules reset after service or VM restarts. | Created persistent firewall scripts and integrated auto-restore functionality. |

Each troubleshooting step deepened understanding of **Linux administration**, **automation scripting**, and **network defense**.

---

## 🏁 Results

✅ Upgraded a **passive IDS → active IDRS** (IPS-like behavior)  
⚡ Achieved **real-time attack detection and automated response**  
🧪 Validated system performance in a **virtualized network environment**  
💡 Strengthened expertise in **Snort 3**, **IPTables**, and **incident response**

The final IDRS autonomously **detects, reacts, and mitigates** potential threats — proving how **open-source tools** can deliver intelligent, self-reactive security systems.

---

## 🔑 Key Takeaways

- ⚙️ **Automation** drastically reduces response latency in cyber defense.  
- 🧠 **Open-source tools**, when integrated properly, can deliver enterprise-grade security.  
- 🧩 **Debugging network and permission issues** sharpens real-world sysadmin and security skills.  
- 🛠️ **Effective security** means not just detecting attacks, but **building systems that act** on your behalf.

---

## 🧰 Tools & Technologies

| Category | Tools Used |
|-----------|-------------|
| Detection | Snort 3 |
| Response | Linux IPTables |
| Automation | Python |
| Environment | Kali Linux (Virtualized Network) |

---

## 📚 Lessons Learned

Cybersecurity isn’t just about *finding* vulnerabilities — it’s about **engineering systems that react intelligently**.  
This project combined **network monitoring**, **Python automation**, and **defensive architecture** into one cohesive system, reinforcing the principle that true security requires both **insight and action**.

---
