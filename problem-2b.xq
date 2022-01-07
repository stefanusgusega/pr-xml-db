for $d in /company/department
return
<department DeptID="{$d/@DeptID}">
    { $d/* }
    <total_emp>
        {
            count(/company/employee[@DeptID = $d/@DeptID])
        }
    </total_emp>
</department>