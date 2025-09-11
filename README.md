# Forgejo-runner-windows-built

[![License](https://img.shields.io/github/license/Crown0815/Forgejo-runner-windows-built)](https://github.com/Crown0815/Forgejo-runner-windows-built/blob/main/LICENSE)
[![Release](https://img.shields.io/github/v/release/Crown0815/Forgejo-runner-windows-built)](https://github.com/Crown0815/Forgejo-runner-windows-built/releases)
[![Issues](https://img.shields.io/github/issues/Crown0815/Forgejo-runner-windows-built)](https://github.com/Crown0815/Forgejo-runner-windows-built/issues)
[![Forgejo Version](https://img.shields.io/badge/Forgejo-1.22+-blue)](https://forgejo.org)
[![Windows](https://img.shields.io/badge/Platform-Windows-blue)](https://github.com/Crown0815/Forgejo-runner-windows-built)

A Windows-compiled version of the Forgejo Runner, providing a pre-built binary for executing Forgejo Actions workflows on Windows systems. 
This repository offers convenient downloads for users seeking a straightforward installation without the need for manual compilation.

## What is Forgejo?

Forgejo is a self-hosted, lightweight software forge designed for version control and collaboration. 
It is a community-driven [hard-fork of Gitea](https://forgejo.org/2024-02-forking-forward/), emphasizing ease of installation, low maintenance, and an inclusive governance model. 
Forgejo supports features such as Git repository hosting, issue tracking, pull requests, wikis, and continuous integration through Actions. 
It is suitable for individuals, teams, and organizations requiring a reliable, open-source alternative to proprietary platforms like GitHub.

Key characteristics include:

- **Lightweight and Efficient**: Minimal resource usage, making it ideal for deployment on modest hardware.
- **Self-Hosted**: Full control over data and infrastructure.
- **Community-Focused**: Governed by a transparent, democratic process.

For more details, refer to the [official Forgejo website](https://forgejo.org) and [documentation](https://forgejo.org/docs/latest/).

## What is the Forgejo Runner?

The Forgejo Runner is a daemon application responsible for executing jobs defined in Forgejo Actions workflows. 
It connects to a Forgejo instance, polls for pending jobs, runs them in isolated environments, and reports results back to the server. 
This enables continuous integration and deployment (CI/CD) pipelines, automated testing, and other automation tasks directly within your Forgejo repositories.

The official runner supports Linux only and can be configured to use various execution modes such as containerized (e.g., Docker) or host-based environments. 
It fetches workflows from the Forgejo server, executes steps defined in YAML files, and handles artifacts, logs, and status updates.

This repository provides a **pre-compiled Windows binary** of the Forgejo Runner, simplifying setup for Windows users. 
It is based on the official [Forgejo Runner source code](https://code.forgejo.org/forgejo/runner).

### Key Features of the Forgejo Runner
- **Scalability**: Multiple runners can be registered to a single Forgejo instance for distributed execution.
- **Security**: Runs jobs in isolated contexts to prevent interference with the host system.
- **Customization**: Supports custom labels for targeting specific runners (e.g., Windows-specific jobs).
- **Integration**: Seamless compatibility with [Forgejo Actions](https://forgejo.org/docs/latest/user/actions/reference/) syntax, which is similar to [GitHub Actions](https://github.com/features/actions).

## Installation and Usage

1. **Download the Binary**:
    - Visit the [Releases page](https://github.com/Crown0815/Forgejo-runner-windows-built/releases) to download the latest Windows executable (e.g., `forgejo-runner.exe`).

2. **Configure the Runner**:
    - Follow the [official documentation](https://forgejo.org/docs/latest/admin/actions/runner-installation/) for runner configuration.

3. **Configure as a Service** (Optional, for persistent operation):
    - Use Windows Task Scheduler or a third-party tool to run the daemon as a background service.
4. **Verify Registration**:
    - Return to your Forgejo instance's Actions settings to confirm the runner appears online and is available for jobs.

5. **Running Workflows**:
    - In your repository, create `.forgejo/workflows/your-workflow.yml` files defining jobs that target Windows (e.g., using `runs-on: [self-hosted, windows]` labels).
    - Trigger a workflow (e.g., via push or manual dispatch) and monitor execution in the Actions tab.

For additional configuration, such as enabling Docker support or custom environment variables, consult the [official documentation](https://forgejo.org/docs/latest/admin/actions/runner-installation/).

### Troubleshooting
- Ensure the runner has network access to your Forgejo instance.
- Check logs in the `--logdir` (if specified) for errors.
- If registration fails, verify the token's validity and instance URL.
- Windows-specific issues may involve antivirus software interfering with executables; add exceptions as needed.

## Relevant Resources

Here is a curated list of links to official and helpful resources for Forgejo, the Runner, and related tools:

### Forgejo Core
- [Forgejo Official Website](https://forgejo.org/) – Introduction, downloads, and community information.
- [Forgejo Documentation (Latest)](https://forgejo.org/docs/latest/) – Comprehensive guides for installation, administration, and usage.
- [Forgejo Installation Guide](https://forgejo.org/docs/latest/admin/installation/) – Step-by-step setup for deploying Forgejo.
- [User Guide](https://forgejo.org/docs/latest/user/) – Tutorials for repository management, issues, and more.
- [Administrator Guide](https://forgejo.org/docs/latest/admin/) – Advanced configuration, including security and performance.

### Forgejo Actions and Runner
- [Forgejo Actions Administrator Guide](https://forgejo.org/docs/latest/admin/actions/) – Detailed setup for enabling and managing Actions on your instance.
- [Forgejo Actions User Guide](https://forgejo.org/docs/latest/user/actions/) – How to write and run workflows.
- [Actions Reference](https://forgejo.org/docs/latest/user/actions/reference/) – Syntax and built-in functions for YAML workflows.
- [Quick Start for Actions](https://forgejo.org/docs/latest/user/actions/quick-start/) – Beginner tutorial for creating your first workflow.
- [Official Forgejo Runner Repository](https://code.forgejo.org/forgejo/runner) – Source code, issues, and build instructions for the runner.
- [Runner Installation Guide](https://forgejo.org/docs/latest/admin/actions/runner-installation/) – Official instructions for installing and configuring the runner.

### Community and Support
- [Forgejo Discourse Forum](https://codeberg.org/forgejo/discussions) – Community discussions and support threads.
- [Forgejo Matrix Channel](https://matrix.to/#/#forgejo:matrix.org) – Real-time chat for developers and users.
- [Codeberg Documentation on Forgejo Actions](https://docs.codeberg.org/ci/actions/) – Practical guide from a Forgejo hoster.
- [Gitea Actions Documentation](https://docs.gitea.com/usage/actions/overview) – Compatible reference, as Forgejo Actions are derived from Gitea (note version differences).

## Contributing

Contributions to improve documentation or binaries are welcome via pull requests. 
For issues specific to this Windows build, open a new issue in this repository.