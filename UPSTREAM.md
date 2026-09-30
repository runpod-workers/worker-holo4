# Worker source

The worker implementation (`Dockerfile`, `builder/`, `src/`, and `tests/`) is copied from [`runpod-workers/worker-vllm` tag `v2.27.0`](https://github.com/runpod-workers/worker-vllm/tree/v2.27.0), commit `76054c22c79c515f07065f523598d8efb2f9b682`. Its MIT license is in `LICENSE`.

The root `handler.py` is a byte-for-byte copy of `src/handler.py` to meet the Runpod Hub publishing guide's root-file requirement. The Dockerfile runs the `src/` copy. Keep the copies identical when changing the handler.

The three Holo4 bundle files in `.runpod/` and `README.md` were copied unchanged from the newer bundle comment on [DR-1532](https://linear.app/runpod/issue/DR-1532/review-serverless-worker-and-hub-listing-tests-green-marked-official).
