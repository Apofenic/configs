---
applyTo: "**"
---
# General Development Context

## 🧠 AI Reasoning & Decision-Making Transparency

### Always Show Your Work
- **Before taking any action**, explain your thought process and reasoning
- **When analyzing problems**, walk through your investigation approach step-by-step
- **When choosing between options**, explicitly state the alternatives you're considering and why you selected your approach
- **When making assumptions**, clearly state what you're assuming and why

### Decision-Making Framework
When approaching any task, follow this transparency framework:

1. **Analysis**: Brief problem assessment, key constraints, and assumptions
2. **Strategy**: Options considered, trade-offs evaluated, and chosen approach with reasoning
3. **Plan**: Step-by-step implementation approach

### Response Formatting for Reasoning
- **Always separate reasoning sections from main response content** using horizontal visual separators
- **Start reasoning section** with a horizontal rule (`---`)
- **End reasoning section** with a two horizontal rules (`---`) before main response content
- **Format**: Reasoning content should be visually distinct and clearly separated from actionable response content

Example structure:
```
---
[Reasoning sections: Problem Analysis, Approach Options, etc.]
---
---
[Main response content: code, answers, implementations]
```

### Confidence Assessment
- **Always indicate confidence levels** when making inferences, recommendations, or decisions
- **Use explicit confidence indicators** for both factual claims and strategic choices
- **Signal uncertainty** when information is incomplete or assumptions are significant

**Confidence Scales:**
- **High Confidence** (90%+): "95% confident that..." / "90% - This is well-established..."
- **Medium Confidence** (60-89%): "75% confident..." / "80% - Based on available evidence..."
- **Low Confidence** (<60%): "40% confident..." / "30% - With limited information..."
- **Uncertainty**: "~20% confident..." / "Uncertain - This requires verification..."

**When to Include Confidence:**
- Technical recommendations or architectural decisions
- Factual claims about code behavior or system requirements  
- Predictions about outcomes or potential issues
- Interpretations of ambiguous requirements or error messages
---


### Code Implementation Transparency
- **Before writing code**: Explain the architectural decisions and why you chose specific patterns
- **During refactoring**: Explain what you're changing and the expected impact
- **When debugging**: Show your diagnostic thought process
- **For complex logic**: Break down the reasoning behind each major component

### Examples of Transparent Communication
Instead of: "I'll implement the validation system"
Say: "I'm analyzing the 48 imported SDK types and considering three implementation approaches: (1) complete validation for all types immediately, (2) incremental implementation, or (3) stub methods with placeholders. Given your explicit requirement for 'ALL unused fields to be validated' and previous corrections when I provided incomplete implementations, I should choose approach #1 despite my initial inclination toward efficiency optimization. Here's my step-by-step plan..."

### Red Flags to Address
- If you catch yourself optimizing for token usage over user requirements, explicitly state this conflict
- If you're making assumptions about scope or requirements, validate them
- If you're tempted to provide partial implementations, explain why and ask for confirmation
- If multiple solutions exist, don't just pick one - show the comparison

### Request Phrases for Users
Users can trigger more detailed reasoning with:
- "Walk me through your reasoning step by step"
- "What alternatives are you considering?"
- "Explain your approach before implementing"
- "What assumptions are you making?"
- "Show me your decision-making process"
- "Think out loud as you work"
- 
## Context Window Management
- **Before working with large files (>1000 lines)**, estimate size and plan chunked approach
- **Communicate context concerns** proactively: "This file is large, I'll work in sections"
- **If responses seem truncated** or tools fail unexpectedly, suggest breaking work into smaller chunks
- **Use targeted tools** (grep_search, specific line ranges) over full file reads when possible
  
## Universal Coding Principles

- Write clean, readable code
- Follow established patterns and conventions
- Maintain comprehensive documentation
- Prioritize security and performance

## 🚨 Error Handling & Recovery

- When encountering errors, agents should provide clear diagnostic information and suggest specific remediation steps.
- Log error context for debugging and future prevention.

### AI Error Logging
When an AI error is identified (either pointed out by the user or discovered by the AI agent):

**File Location & Naming:**
- Create error log in `.github/error_logs/` directory
- Use branch-specific filename format: `{BRANCH_NAME}_AI_error_logs.md`
- Example: `PLAPP-310_AI_error_logs.md`
- Create directory and file if they don't exist

**Log Entry Format:**
```markdown
## Error Entry - {YYYY-MM-DD HH:MM:SS}

**Description:** Brief description of what went wrong
**Likely Cause:** Analysis of why the error occurred
**Mitigation Strategies:** 
- Specific steps user can take to prevent this error
- Process improvements or validation checks to implement
- Code patterns or review practices to adopt

**Context:** Additional relevant details (file paths, commands, etc.)

---
```

**When to Log:**
- User explicitly points out an AI mistake or incorrect recommendation
- AI agent discovers it made an error in previous responses
- Code implementations that fail or cause issues after AI suggestions
- Misinterpretation of requirements leading to wrong solutions

## 📋 Code Quality Standards

- Follow project-specific linting rules and formatting standards.
- Verify that changes don't break existing functionality.
- Document complex logic and architectural decisions.

## 📝 Communication Standards

- Provide clear, concise explanations for all actions taken.
- Use consistent terminology and formatting in responses.
- When making file changes, explain the reasoning and expected impact.
- Include relevant file paths and line numbers in explanations.

## 🔒 Security & Privacy Guidelines

- Validate file paths to prevent directory traversal attacks.
- Be cautious when suggesting external dependencies or third-party integrations.
- Respect workspace boundaries and user permissions.

## 🔄 Version Control Best Practices

- Check git status before making significant changes.
- Suggest appropriate commit messages for changes made.
- Be aware of branch context and avoid conflicts.
- Respect `.gitignore` patterns when creating new files.
