# Use the same PasarGuard version that your Railway service currently runs.
# Change this tag if your current service uses another version.
ARG PASARGUARD_TAG=v5.4.1
FROM pasarguard/panel:${PASARGUARD_TAG}

# Replace the browser-facing subscription page template.
COPY index.html /code/app/templates/subscription/index.html
