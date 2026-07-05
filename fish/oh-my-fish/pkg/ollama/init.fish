# Limit concurrency — one model at a time on 16 GB
export OLLAMA_MAX_LOADED_MODELS=1
export OLLAMA_NUM_PARALLEL=1

# Keep the model warm between requests — avoids cold-start latency in VS Code
export OLLAMA_KEEP_ALIVE=30m

# Apple Silicon optimisations — the highest-impact pair for 16 GB
export OLLAMA_FLASH_ATTENTION=1
export OLLAMA_KV_CACHE_TYPE=q8_0

# Optional — disables remote inference and web search entirely
export OLLAMA_NO_CLOUD=1
