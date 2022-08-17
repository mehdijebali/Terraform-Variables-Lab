# Lab for Terraform Variables
Variables are necessary to parameterizing our infrastructure deployments using Terraform. It enables user to pass in configuration values at the time of deployment, so we can use the same Terraform ressource declarations with slightly different configuration. 
in this demo, we deploy an EC2 instance by using input variables stored in **variables.tf** file. These variables are defined as a block that contains the variable name and other parameters. 
We used two types of input variable:
## Primitive type
```
variable "INSTANCE_TYPE" {
default = "t2.micro"  
}
```
## Collection type
A collection of multiple values grouped together as a single value.
#### List
A sequence of values identified by an index
```
variable "Security_Group"{
   type = list
   default = ["sg-24076", "sg-90890", "sg-456789"]
}
```
#### Map
A collection of values, each with a string label identifier
```
variable "AMIS" {
   type = map
   default = {
       us-east-1 = "ami-0b0ea68c435eb488d"
       us-east-2 = "ami-05692172625678b4e"
       us-west-2 = "ami-0352d5a37fb4f603f"
       us-west-1 = "ami-0f40c8f97004632f9"
   }
}
```