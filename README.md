# azure-config-transform

This repo allows you to add a build step to an Azure project to transform *.cscfg and *.csdef files like web.config files.
The web.config transform syntaxt (Xdt) is used, see https://msdn.microsoft.com/en-us/library/dd465326(v=vs.110).aspx.

### note:
if you only wish to transform arbitrary xml files, see this gist: https://gist.github.com/stombeur/4115f149349d4520409163959b9db387


### How to add to your project
* add the CustomCloudServicesTargets.targets file to your solution (as a solution item)
* in every Azure .ccproj file for which you want to transform the config files
  * unload the .ccproj file and open it for editing
  * reference CustomCloudServicesTargets.targets in the .ccproj file
  * add the path to the .NET assembly that you want to use the assemblyversion number from
    * the .cspkg and .csfg files that are generated will be postfixed with this assembly's assemblyversion



##### Example .ccproj file

```
<Project>
...
  <Import Project="..\AzureConfigTransform.Config\CustomCloudServicesTargets.targets" />
  <ItemGroup>
    <RoleAssembly Include="..\AzureConfigTransform.WorkerRole\bin\$(ConfigurationName)\AzureConfigTransform.WorkerRole.dll" />
  </ItemGroup>
</Project>
```
 
 
##### Example transform file/folder structure
- your.sln
- AzureConfigTransform.Config (folder) (name can be changed in CustomCloudServicesTargets.targets)
  - CustomCloudServicesTargets.targets (file, required)
  - AzureConfigTransform.CloudService (folder, name = Azure project name, required for each project that includes the .targets)
    - **ServiceConfiguration.Cloud.EnvironmentY.Transform.cscfg** (file, optional, one for each environment)
    - **ServiceConfiguration.Cloud.EnvironmentX.Transform.cscfg** (file, optional, one for each environment)
    - **ServiceDefinition.Local.Transform.csdef** (file, required, one for each configuration)
    - **ServiceDefinition.Cloud.Transform.csdef** (file, required, one for each configuration)
  - Another.CloudService (folder)
    - etc ...



##### Example transform syntax
see the included examples and the link to xdt syntax above
