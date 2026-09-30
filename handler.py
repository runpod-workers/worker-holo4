"""Runpod Serverless handler for this worker.

Serving is worker-vllm's: the base image ships its handler at /src (runpod-workers/
worker-vllm, src/main.py and src/handler.py). This file runs that entrypoint unchanged,
so the model, quantization and limits come only from the environment in the Dockerfile
and the endpoint's settings.
"""
import runpy
import sys

sys.path.insert(0, "/src")
runpy.run_path("/src/main.py", run_name="__main__")
