# Packer Notes

validate configuration

```shell
 packer validate -on-error=ask -var-file='${credentials}' ${template}
```

build image

```shell
packer build -on-error=ask -var-file='${credentials}' ${template}
```

## [Debugging Notes](https://developer.hashicorp.com/packer/docs/debugging)

Using `packer build -on-error=ask` allows you to inspect failures and try out solutions before restarting the build.

For remote builds with cloud providers like Amazon Web Services AMIs, debugging a Packer build can be eased greatly with `packer build -debug`. This disables parallelization and enables debug mode.

In debug mode once the remote instance is instantiated, Packer will emit to the current directory an ephemeral private SSH key as a .pem file. Using that you can `ssh -i <key.pem>` into the remote build instance and see what is going on for debugging. The key will only be emitted for cloud-based builders. The ephemeral key will be deleted at the end of the Packer run during cleanup.

For a local builder, the SSH session initiated will be visible in the detail provided when `PACKER_LOG=1` environment variable is set prior to a build, and you can connect to the local machine using the userid and password defined in the kickstart or preseed associated with initializing the local VM.

It should be noted that one of the options `-on-error` is to `retry`, the retry of the step in question has limitations:

- The template Packer is building is not reloaded from file.
- The resources specified from builders are reloaded from file.

Check the specifics on your builder to confirm their behavior.
