<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:choose>
<c:when test="${msgtype==1}">

<div class="alert alert-success" style="visibility: visible;">
You have successfully added membership.
</div> 
</c:when>
<c:otherwise>
<div class="alert alert-danger" style="visibility: visible;">
${msg}
</div>  
</c:otherwise>

</c:choose> 
