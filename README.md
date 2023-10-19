# GitHub Action to Upload a file to Azure Blob Storage

This action is designed to use the [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest) to upload a file of your choice from Azure Blob Storage account.
This action is based on: https://github.com/bacongobbler/azure-blob-storage-upload

## Usage

### Example

Place in a `.yml` file such as this one in your `.github/workflows` folder. [Refer to the documentation on workflow YAML syntax here.](https://help.github.com/en/articles/workflow-syntax-for-github-actions)

```yaml
name: Upload To Azure Blob Storage
on:
  push:
    branches:
      - main
jobs:
  upload:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: ymoona/azure-blob-storage-upload@main
        with:
          source_dir: ./
          container_name: documentation
          connection_string: ${{ secrets.ConnectionString }}
          file: readme.md
```


### Required Variables

| Key                 | Value                                                                           |
|---------------------|---------------------------------------------------------------------------------|
| `connection_string` | The connection string for the storage account.                                  |
| `container_name`    | The name of the storage account container the file will be uploaded to.         |
| `file`              | The name of the file to upload.                                                 |
| `source_dir`        | The name of the directory you where the file is.                                |

## License

This project is distributed under the [Apache 2 license](LICENSE).

