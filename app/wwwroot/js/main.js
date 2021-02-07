        var sideBarOpen = false;
        function openNav(){
            document.getElementById("sideNav").style.width = "250px";
            document.getElementById("main").style.filter = "blur(2px)";
            sideBarOpen = true;
        }
		
        function closeNav(){
            document.getElementById("sideNav").style.width = "0";
            document.getElementById("main").style.filter = "blur(0)";
            sideBarOpen = false;
        }
        

        $(document).click(function( event ) {
            var target = $( event.target );
            if(!target.is("#sideNav") && !$("#sideNav").has(event.target).length && !target.is(".sidenav-toggle") && sideBarOpen){
                closeNav();
                }else if(target.is(".sidenav-toggle")){
                openNav();
                } 
        });

        $(window).on('resize',function(){
            if($(window).width() >= 992){
                $('#main').css({'filter':'blur(0px)'});
            }else if($(window).width() <= 992 && sideBarOpen == true){
                $('#main').css({'filter':'blur(2px)'});
            } 
        })

        $('#switch').click(function(){
            $('.main-wrapper').toggleClass('light');
            $('.slot , .sidenav ').toggleClass('light-nav');
        })

    