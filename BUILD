python_requirements(
    name="root",
)

pex_binary(
    name="cli",
    entry_point="dummy:main",
    include_tools=True,
    environment=parametrize("any", "linux_x86"),
)

docker_image(
    name="docker0",
    dependencies=[":cli@environment=linux_x86"],
)

local_environment(
    name="any",
    compatible_platforms=["macos_arm64", "macos_x86_64", "linux_x86_64"],
)

local_environment(
    name="linux_x86",
    compatible_platforms=["linux_x86_64"],
    fallback_environment="docker"
)

docker_environment(
    name="docker",
    platform="linux_x86_64",
    image="python:3.10.12-slim-bullseye",
)
