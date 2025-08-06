---
applyTo: "**"
---

### 🔄 Project Awareness & Context

- **If asked to create `*.planning.instructions.md` or `*.tasks.instructions.md` files, add them to `.github/instructions/` directory (create if needed) and use templates from `/Users/anthonylubrino/Global_MCP/prompt_templates/workspace_templates/`**
- **Every project needs `.vscode/mcp.json` at project root - use template at `/Users/anthonylubrino/Global_MCP/prompt_templates/mcp.json` and install required dependencies**
- **Always copy from templates, never generate instruction files from scratch**

### ✅ Task Completion

- **Mark completed tasks in `*.tasks.instructions.md` immediately after finishing**
- **Add discovered tasks under "Discovered During Work" section**
- **Use direct workspace operations (VS Code search, terminal, file explorer) over external tools**
- **Provide "Run in Terminal" buttons for all command suggestions**
- **Proceed with file operations if accessible; only notify user if access denied** for the user to execute the command directly through the AI agent.
- The AI should display the command and a button labeled “Run in Terminal” (or similar).
- If the user clicks the button, the AI should execute the command and display the output.
- If the user prefers, they can copy and run the command manually.
- This ensures a smooth workflow and gives the user full control over command execution.