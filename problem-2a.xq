for $p in /company/project
return
<project ProjID="{$p/@ProjID}">
    { $p/* }
    { for $ep in /company/emp_project[@ProjID = $p/ProjID],
        $e in /company/employee[@EmpID = $ep/EmpID]
    return <employee_name> {$e/Name/text()} </employee_name>}
</project>