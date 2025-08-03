applyTo: "**"
---


# AI Behavior Instructions (Generic)


## Project Context

This project is a modern application using common development frameworks and best practices. Adapt these instructions to your project's specific stack and structure.


## Testing Guidelines

### Test Execution

- **ALWAYS use the designated test command for running tests** (e.g., `<test command>`) - Avoid running tests in watch mode unless specifically required for development
- Use environment variables or flags as needed to control test behavior
- Use specific test patterns or filters when needed (e.g., `--testPathPattern=<pattern>`)
- Only use watch mode when explicitly requested for development purposes

### Test Organization

- Organize test suites using clear, consistent patterns
- Separate test fixtures into dedicated files
- Use shared utilities for common mock functions
- Group related tests into focused describe blocks and separate files


## Code Quality Standards

### Language & Typing

- Maintain strict language compliance (e.g., TypeScript, Python, etc.)
- Use proper type definitions, interfaces, or type hints as appropriate
- Follow established naming conventions (e.g., camelCase for variables, PascalCase for types)

### File Organization

- Follow the established workspace structure for your project
- Use consistent import paths and module organization
- Place test files in dedicated test directories within their respective modules

### Documentation

- Document complex logic and architectural decisions
- Maintain README files for new directories or significant refactoring


## Framework & Architecture Patterns

- Follow the architectural patterns and best practices of your chosen framework(s)
- Use official CLI tools for scaffolding and building when available
- Maintain compatibility with framework versions as required

### Database Operations

- Use atomic transactions for data integrity
- Implement proper error handling and rollback mechanisms
- Follow established patterns for configuration and deployment


## Development Workflow

### Commands

- Use the designated package manager for your project (e.g., npm, yarn, pip)
- Use project-specific scripts for running tests, coverage, and linting

### Environment

- Support the required language and runtime versions for your project
- Follow workspace and repository patterns as appropriate


## Error Handling

### Testing

- Always verify test completeness before proceeding
- Use appropriate mock patterns for external dependencies
- Maintain test isolation and independence

### Code Changes

- Verify changes don't break existing functionality
- Use incremental development approaches
- Test changes thoroughly before completion


## Security Considerations

- Validate file paths to prevent directory traversal
- Be cautious with external dependencies
- Respect workspace boundaries and permissions
- Follow established authentication and authorization patterns


## Communication Standards

- Provide clear explanations for all actions taken
- Use consistent terminology and formatting
- Include relevant file paths and context in explanations
- Document technical decisions and trade-offs made during development


## Version Control Best Practices

### Commit Message Guidelines

Follow a conventional commit format: `type(scope): description`

**Commit Types:**

- **feat**: New feature or functionality
- **fix**: Bug fix
- **docs**: Documentation changes
- **style**: Code formatting, whitespace, or style changes
- **refactor**: Code restructuring without changing functionality
- **test**: Adding or updating tests
- **chore**: Maintenance tasks, dependency updates

**Writing Guidelines:**

- Keep the first line under 72 characters
- Use imperative mood (e.g., "add", "fix", "update")
- Include scope when relevant to specify the area of change
- Use lowercase for type and scope
- Don't end with a period
- Keep the total commit message length under 250 characters

**Examples:**

- `feat(auth): add two-factor authentication`
- `fix(validation): resolve null pointer in user input`
- `docs(api): update authentication endpoints`
- `refactor(utils): extract common validation logic`
- `test(auth): add integration tests for login flow`
- `chore(deps): update dependency to latest version`

### Git Workflow

- Check git status before making significant changes
- Suggest appropriate commit messages for changes made using the guidelines above
- Be aware of branch context and avoid conflicts
- Respect `.gitignore` patterns when creating new files
