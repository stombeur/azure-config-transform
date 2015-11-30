<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="AzureConfigTransform.CloudService" generation="1" functional="0" release="0" Id="9ef0dc94-d398-44d0-b8de-a0588ec100a9" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="AzureConfigTransform.CloudServiceGroup" generation="1" functional="0" release="0">
      <settings>
        <aCS name="AzureConfigTransform.WorkerRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureConfigTransform.CloudService/AzureConfigTransform.CloudServiceGroup/MapAzureConfigTransform.WorkerRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="AzureConfigTransform.WorkerRole:MyStorageAccount" defaultValue="">
          <maps>
            <mapMoniker name="/AzureConfigTransform.CloudService/AzureConfigTransform.CloudServiceGroup/MapAzureConfigTransform.WorkerRole:MyStorageAccount" />
          </maps>
        </aCS>
        <aCS name="AzureConfigTransform.WorkerRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AzureConfigTransform.CloudService/AzureConfigTransform.CloudServiceGroup/MapAzureConfigTransform.WorkerRoleInstances" />
          </maps>
        </aCS>
      </settings>
      <maps>
        <map name="MapAzureConfigTransform.WorkerRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureConfigTransform.CloudService/AzureConfigTransform.CloudServiceGroup/AzureConfigTransform.WorkerRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapAzureConfigTransform.WorkerRole:MyStorageAccount" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureConfigTransform.CloudService/AzureConfigTransform.CloudServiceGroup/AzureConfigTransform.WorkerRole/MyStorageAccount" />
          </setting>
        </map>
        <map name="MapAzureConfigTransform.WorkerRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AzureConfigTransform.CloudService/AzureConfigTransform.CloudServiceGroup/AzureConfigTransform.WorkerRoleInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="AzureConfigTransform.WorkerRole" generation="1" functional="0" release="0" software="C:\data\perso\azure-config-transform\src\AzureConfigTransform.CloudService\csx\Release\roles\AzureConfigTransform.WorkerRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="MyStorageAccount" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;AzureConfigTransform.WorkerRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;AzureConfigTransform.WorkerRole&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AzureConfigTransform.CloudService/AzureConfigTransform.CloudServiceGroup/AzureConfigTransform.WorkerRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/AzureConfigTransform.CloudService/AzureConfigTransform.CloudServiceGroup/AzureConfigTransform.WorkerRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/AzureConfigTransform.CloudService/AzureConfigTransform.CloudServiceGroup/AzureConfigTransform.WorkerRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="AzureConfigTransform.WorkerRoleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="AzureConfigTransform.WorkerRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="AzureConfigTransform.WorkerRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
</serviceModel>