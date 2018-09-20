$(function()
{
	switch(menu)
	{
	case 'About':
		$('#About').addClass('active');
		break;
	case 'Contact':
		$('#Contact').addClass('active');
		break;
	case 'Service':
		$('#Service').addClass('active');
		break;
	default :
		$('#Home').addClass('active');
		break;
	}
	
})