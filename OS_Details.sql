/* 
.DESCRIPTIONThe sample scripts are not supported under any Microsoft standard support program or service. 
The sample scripts are provided AS IS without warranty of any kind. 
Microsoft further disclaims all implied warranties including, without limitation, any implied warranties of merchantability or of 
fitness for a particular purpose. The entire risk arising out of the use or performance of the sample scripts and documentation 
remains with you. In no event shall Microsoft, its authors, or anyone else involved in the creation, production, or delivery of 
the scripts be liable for any damages whatsoever (including, without limitation, damages for loss of business profits, 
business interruption, loss of business information, or other pecuniary loss) arising out of the use of or inability to use the 
sample scripts or documentation, even if Microsoft has been advised of the possibility of such damages. 
*/

SELECT [ResourceID]
      ,[Netbios_Name0] as 'Name'
      ,[Operating_System_Name_and0] as 'OS'
      ,[BuildExt] as 'Build'
      ,[Active0] as 'Active'
      ,[Client0] as 'Client'
  FROM [CM_PS1].[dbo].[v_R_System]
Where [Active0] = 1
and   [Client0] = 1
and   [Operating_System_Name_and0] is like '%Server%
Order By [BuildExt]
