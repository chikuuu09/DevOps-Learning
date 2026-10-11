# Multi-Stage Docker Build

The main purpose of choosing a **Python-based application** to demonstrate this example is to understand how multi-stage Docker builds work and how they can help optimize Docker images.

Unlike Go, which compiles into a standalone executable that can run without a traditional language runtime, Python requires a Python interpreter to execute its code. Therefore, Python applications generally need a runtime environment in the final Docker image.

Multi-stage builds allow us to separate the build environment from the runtime environment, copying only the files required to run the application into the final stage. However, for a simple Python calculator that uses only the standard library, the reduction in image size may be limited because the Python runtime is still required.

**The key takeaway** is that multi-stage builds can reduce image size and improve security by excluding unnecessary build tools and dependencies from the final image. The actual benefits depend on the application, its dependencies, and the base images used.
