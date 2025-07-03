<div align="center">
  <img src="assets/logo.png" alt="logo" width="200" height="auto" />
  <h1>SnippitBin</h1>
  <p>A simple <a href="">Pastebin</a> clone that uses AWS serverless technology.</p>
</div>


## About

### Tech Stack
### Features
### Color Reference
### Environment Variables

## Getting Started
### Prerequisites




### Terraform

#### Pre setup (one time)

##### S3 bucket
```
aws s3api create-bucket \
  --bucket my-terraform-state-bucket \
  --region us-west-2 \
  --create-bucket-configuration LocationConstraint=us-west-2
```

##### DyanmoDB Table
```
aws dynamodb create-table \
  --table-name terraform-locks \
  --attribute-definitions AttributeName=LockID,AttributeType=S \
  --key-schema AttributeName=LockID,KeyType=HASH \
  --billing-mode PAY_PER_REQUEST
```

#### Initialize Terraform
```
terraform init
```


## Roadmap
## Contributing
## FAQ

## License
Distributed under the MIT License. See LICENSE for more information.

## Acknowledgements

## Limitation of Liability
THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.