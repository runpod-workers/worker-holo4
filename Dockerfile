# Built by the Runpod Hub on each GitHub release. The image and every value
# below are the recipe Launch Builder validated; the endpoint can override any
# of them at deploy time.
FROM runpod/worker-v1-vllm:v2.27.0

ENV GPU_MEMORY_UTILIZATION="0.90" \
    MAX_CONCURRENCY="30" \
    MAX_MODEL_LEN="8192" \
    MODEL_NAME="Hcompany/Holo4-35B-A3B" \
    QUANTIZATION="fp8" \
    TENSOR_PARALLEL_SIZE="1"

COPY handler.py /handler.py

ENTRYPOINT ["python3", "/handler.py"]
