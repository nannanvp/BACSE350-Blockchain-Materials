# BACSE350: Blockchain Architecture and Design

Comprehensive, exam-ready study notes, architectural models, and vector diagrams for **BACSE350 Blockchain Architecture and Design** (Modules 1 to 5).

---

## 📚 Course Modules & Master Notes

| Document | Primary Topics | Visuals & Code |
| :--- | :--- | :---: |
| 📖 **[Master Study Guide](BACSE350%20Blockchain%20Master%20Study%20Guide.md)** | **Course Roadmap, comparative matrices, 29-diagram index, formulas, and university exam blueprints** | 10 Tables, Formulas |
| 🧱 **[Module 1: Fundamentals](BACSE350%20Blockchain%20Module%201.md)** | Features, P2P network, 6-layer protocol stack, Public/Private/Consortium, ECDSA, SHA-256, 2-Generals & Byzantine Generals, PoW, PoS, DPoS, Longest Chain rule | 12 Mermaid + 6 SVGs |
| 🪙 **[Module 2: Bitcoin Network](BACSE350%20Blockchain%20Module%202.md)** | Key derivation, Python address scripts, BIP39/BIP32/BIP44 HD wallets, UTXO lifecycle, raw tx anatomy, P2PKH/P2SH scripts, DNS node discovery, gossip propagation | 9 Mermaid + 5 SVGs |
| ⚡ **[Module 3: Ethereum & Hyperledger](BACSE350%20Blockchain%20Module%203.md)** | EVM stack machine, Gas economics, EIP-1559, Solidity contracts (Allman style), Remix IDE, Fabric enterprise architecture, MSP, 6-stage endorsement flow, Golang chaincode | 7 Mermaid + 5 SVGs |
| 🛡️ **[Module 4: Security & Privacy](BACSE350%20Blockchain%20Module%204.md)** | Technical vs. Inherent risks, The DAO Hack walkthrough (CEI pattern), privacy attacks, 51% & Eclipse attacks, hardware wallets, air-gapped PSBT, Shamir's secret sharing, multisig | 8 Mermaid + 6 SVGs |
| 📦 **[Module 5: Storage Models & Use Cases](BACSE350%20Blockchain%20Module%205.md)** | 6-layer stack, 10-step design methodology, on-chain vs. off-chain economics, IPFS (CIDv0/v1, UnixFS, DHT, Bitswap), BigchainDB, hybrid Solidity registry, 12 case studies | 10 Mermaid + 6 SVGs |

---

## 🖼️ Architectural Diagrams

All 29 diagrams are rendered using native **Mermaid flowcharts/sequence diagrams** (which render directly on GitHub) alongside high-fidelity vector `.svg` files located in the [`diagrams/`](diagrams/) directory.

* To view diagrams natively on GitHub, simply browse any module markdown file above.
* All embedded SVG links use relative paths, ensuring full portability.

---

## 💻 Viewing Locally in VS Code

If you clone or download this repository locally:
1. **One-Click Setup:** Double-click [`Setup_VSCode_Viewer.bat`](Setup_VSCode_Viewer.bat).
   * Automatically detects/installs VS Code if needed.
   * Installs the recommended extensions for native Mermaid rendering (`bierner.markdown-mermaid`), KaTeX math (`goessner.mdmath`), and GitHub preview styles (`bierner.github-markdown-preview`).
   * Opens the repository directly in VS Code.
2. Inside VS Code:
   * Press **`Ctrl + Shift + V`** to view full Markdown Preview.
   * Press **`Ctrl + K, then V`** to view Markdown Preview side-by-side with the notes.

---

## 📥 Downloads & Archives

* **Complete Archive:** [`BACSE350_Blockchain_Course_Materials.zip`](BACSE350_Blockchain_Course_Materials.zip) (Contains all markdown notes, diagrams, bat installer, and merged PDFs).
* **Merged Course PDFs:**
  * [Module 1 PDF](BACSE350%20Blockchain%20Module%201.pdf)
  * [Module 2 PDF](BACSE350%20Blockchain%20Module%202.pdf)
  * [Module 3 PDF](BACSE350%20Blockchain%20Module%203.pdf)
  * [Module 4 PDF](BACSE350%20Blockchain%20Module%204.pdf)
  * [Module 5 PDF](BACSE350%20Blockchain%20Module%205.pdf)
* **Raw Course Slides & Notes:** Archived in [`original/`](original/).
