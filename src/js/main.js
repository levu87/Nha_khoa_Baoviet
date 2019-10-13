const App = {
    SetBackground: () => {
        $('[setBackground]').each(function () {
            var background = $(this).attr('setBackground')
            $(this).css({
                "background-image": "url(" + background + ")",
                "background-size": "cover",
                "background-position": "center center"
            })
        })
        $('[setBackgroundRepeat]').each(function () {
            var background = $(this).attr('setBackgroundRepeat')
            $(this).css({
                "background-image": "url(" + background + ")",
                "background-repeat": "repeat"
            })
        })
    },
    EqualHeightElement: el => {
        let height = 0;
        let thisHeight = 0;
        $(el).each(function () {
            thisHeight = $(this).height();
            if (thisHeight > height) {
                height = thisHeight;
            }
        });
        $(el).height(height)
    },
    InitLazyLoad: () => {
        return new LazyLoad({
            elements_selector: ".lazy"
        });
    }
}
const Header = {
    LanguageWrapper: () => {
        $('.language-wrapper .language-active').on('click', function (e) {
            $(this).parents('.language-wrapper').toggleClass('active')
            $('html').one('click', function () {
                $('.language-wrapper').removeClass('active')
            });
            e.stopPropagation();
        })
    },
    ToggleMenuMobile: () => {
        // $('header .toggle-button').on('click', function() {
        //     $(this).toggleClass('active')
        //     $('header .list-page-top').toggleClass('active')
        //     $('header .mobile-wrapper').toggleClass('active')
        //     $('header .navigation-zone-child-wrapper').removeClass('active')
        //     $('header .backdrop-wrapper').fadeToggle(400)
        // })
    },
    SearchBox: () => {
        $('.searchbutton').on('click', function () {
            $('.searchbox').toggleClass('active')
            $('.back-drop').toggleClass('active')
        });
        $('.back-drop').on('click', function () {
            $('.searchbutton').removeClass('active')
            $('.searchbox').removeClass('active')
            $('.back-drop').removeClass('active')
        });
    },
    SearchBoxMobile: () => {
        // $('header .search-icon').on('click', function() {
        //     $('header .search-wrapper').slideToggle()
        //     $('header').toggleClass('show-search-wrapper')
        // })
        return {
            "MobileSearch": new MappingListener({
                selector: 'header .searchbox',
                mobileWrapper: 'header .mobile-wrapper',
                mobileMethod: 'appendTo',
                desktopWrapper: 'header .main-wrapper .main-menu',
                desktopMethod: "insertAfter",
                breakpoint: 1025,
            }).watch(),
        }
    },
    LanguageMobile: () => {
        $('header .mobile-wrapper .language-active').on('click', function () {
            $('header .mobile-wrapper .language-list').slideToggle()
        })
    },
    MobileMapping: () => {
        return {
            "NavigationWrapper": new MappingListener({
                selector: 'header .main-menu',
                mobileWrapper: 'header .mobile-wrapper',
                mobileMethod: 'appendTo',
                desktopWrapper: 'header .main-wrapper .brand',
                desktopMethod: "insertAfter",
                breakpoint: 1025,
            }).watch(),
        }
    },
    TopheadMapping: () => {
        return {
            "Tophead": new MappingListener({
                selector: 'header .header-top-wrapper',
                mobileWrapper: 'header .mobile-wrapper',
                mobileMethod: 'appendTo',
                desktopWrapper: 'header .header-top',
                desktopMethod: "prependTo",
                breakpoint: 1025,
            }).watch(),
        }
    }

}

function headerfixed() {
    if ($(window).scrollTop() > 0) {
        $('header').addClass('fixed')
    } else {
        $('header').removeClass('fixed')
    }
    $(window).on('scroll', function () {
        if ($(window).scrollTop() > 0) {
            $('header').addClass('fixed')
        } else {
            $('header').removeClass('fixed')
        }
    })
}

function toggleHeader() {
    $('.toggle-button').on('click', function () {
        $('.toggle-button').toggleClass('active')
        $('.mobile-wrapper').toggleClass('active')
        $('.back-drop').toggleClass('active')
    });
    $('.back-drop').on('click', function () {
        $('.toggle-button').removeClass('active')
        $('.mobile-wrapper').removeClass('active')
        $('.back-drop').removeClass('active')
    });
}

function swiperInit() {
    var swiper = new Swiper('.home-banner .swiper-container', {
        pagination: {
            el: '.home-banner .swiper-pagination',
            clickable: true,
            type: 'bullets'
        },
        navigation: {
            nextEl: '.swiper-btn-next',
            prevEl: '.swiper-btn-prev',
        },
        loop: true,
        speed: 750,
        effect: "fade",
        observer: true,
        observeParents: true,
        // autoplay: {
        // 	delay: 3000
        // },
        fadeEffect: {
            crossFade: true
        },
    });
    var galleryThumbs = new Swiper(
		".services-thumbs-wrapper .swiper-container",
		{
			spaceBetween: 20,
			slidesPerView: 4,
			freeMode: true,
			watchSlidesVisibility: true,
			watchSlidesProgress: true
		}
	);
	var galleryTop = new Swiper(".services-top-wrapper .swiper-container", {
		spaceBetween: 10,
		effect: "fade",
		fadeEffect: {
			crossFade: true
		},
		thumbs: {
			swiper: galleryThumbs,
			slidesPerView: 4
        },
        navigation: {
            nextEl: '.swiper-btn-next',
            prevEl: '.swiper-btn-prev',
        },
    });
   
    var swiper = new Swiper('.services-other .swiper-container', {
    slidesPerView: 4,
    spaceBetween: 30,
    navigation: {
    nextEl: '.sv-other-btn-next',
    prevEl: '.sv-other-btn-prev',
    },
    breakpoints: {
    320: {
    slidesPerView: 1,
    spaceBetween: 10
    },
    // when window width is <= 480px
    480: {
    slidesPerView: 2,
    spaceBetween: 20,

    },
    // when window width is <= 640px
    768: {
    slidesPerView: 2,
    spaceBetween: 30
    },
    992: {
    slidesPerView: 3,
    spaceBetween: 30
    }
    },
    });
    var swiper = new Swiper('.about-section .swiper-container', {
        slidesPerView: 1,
        navigation: {
        nextEl: '.about-btn-next',
        prevEl: '.about-btn-prev',
        },
        });
    var swiper = new Swiper('.tab-navigation .swiper-container', {
        // autoplay: {
        //     delay: 4500
        // },
        slidesPerView: 4,
        loop: false,
        speed: 1000,
        navigation: {
            prevEl: '.history-btn-prev',
            nextEl: '.history-btn-next',
        },
        breakpoints: {
            576: {
                slidesPerView: 1,
            },
            768: {
                slidesPerView: 2,
            },
            1025: {
                slidesPerView: 3,
            },
            1200: {
                slidesPerView: 4,
            }
        }
    });
    var swiper = new Swiper('.prize-section .swiper-container', {
        autoplay: {
            delay: 4500
        },
        slidesPerView: 4,
        spaceBetween: 30,
        loop: false,
        speed: 1000,
        navigation: {
            prevEl: '.prize-btn-prev',
            nextEl: '.prize-btn-next',
        },
        breakpoints: {
            576: {
                slidesPerView: 1,
            },
            768: {
                slidesPerView: 2,
            },
            1025: {
                slidesPerView: 3,
            },
            1200: {
                slidesPerView: 4,
            }
        }
    });
    var swiper = new Swiper('.partners-section .swiper-container', {
        autoplay: {
            delay: 4500
        },
        slidesPerView: 6,
        spaceBetween: 30,
        slidesPerColumn: 2,
        loop: false,
        speed: 1000,
        navigation: {
            prevEl: '.partners-btn-prev',
            nextEl: '.partners-btn-next',
        },
        breakpoints: {
            576: {
                slidesPerView: 1,
            },
            768: {
                slidesPerView: 2,
            },
            1025: {
                slidesPerView: 3,
            },
            1200: {
                slidesPerView: 4,
            }
        }
    });
    var galleryThumbs = new Swiper(
		".may-moc-thumbs-wrapper .swiper-container",
		{
			spaceBetween: 20,
			slidesPerView: 4,
			freeMode: true,
			watchSlidesVisibility: true,
			watchSlidesProgress: true
		}
	);
	var galleryTop = new Swiper(".may-moc-top-wrapper .swiper-container", {
		spaceBetween: 10,
		effect: "fade",
		fadeEffect: {
			crossFade: true
		},
		thumbs: {
			swiper: galleryThumbs,
			slidesPerView: 4
        },
        navigation: {
            nextEl: '.swiper-btn-next',
            prevEl: '.swiper-btn-prev',
        },
    });
}
function Accordion() {

    $(".list-question ul .accordion-title p").click(function(e) {
        e.preventDefault();
        if (!$(this)
            .parent()
            .hasClass("active")
        ) {
            $(".list-question ul .accordion-title .accordion-content").slideUp();
            $(this)
                .next()
                .slideToggle();
            $(".list-question ul .accordion-title").removeClass("active");
            $(this)
                .parent()
                .addClass("active");
        } else {
            $(this)
                .next()
                .slideToggle();
            $(".list-question ul .accordion-title").removeClass("active");
        }
    });
}
function sticky(){
    if ($("body").hasClass("about-us")) {
		let offset = 80;
		let scrollToSection = $('.about-us-nav ul li a[href*="#"]');
		scrollToSection.on("click", function(e) {
			$("html, body").animate(
				{
					scrollTop: $($(this).attr("href")).offset().top - offset
				},
				600,
				"linear"
			);
		});
	}
}
// function scroll(){
//     $(".about-us-nav ul li a[href^='#']").click(function(e) {
//         e.preventDefault();
        
//         var position = $($(this).attr("href")).offset().top;
    
//         $("body, html").animate({
//             scrollTop: position
//         } /* speed */ );
//     });
// }
function tabActive() {
	$('.tab-navigation a').click(function () {
		var tab_id = $(this).attr('data-type');
		$('.tab-navigation a').removeClass('active');
		$('.tab-content').removeClass('active');
        $('.tab-img').removeClass('active');
		$(this).addClass('active');
		$("#" + tab_id).addClass('active');
	})
}
function form(){
	$('.button-ungtuyen').on('click', function() {
        $('.form-apply').toggleClass('active')
        $('.back-drop').toggleClass('active')
    });
    $('.back-drop').on('click', function () {
        $('.form-apply').removeClass('active')
        $('.back-drop').removeClass('active')
    });
    $('.button-out').on('click', function () {
        $('.form-apply').removeClass('active')
        $('.back-drop').removeClass('active')
    });
}
function ButtonPrint(){
	$('a.fax').on('click', function(){
	window.print()
	})
    }
    function mobileListItem() {
        $('.has-dropdown').on('click', function () {
            if ($(this).find('ul').is(':hidden')) {
                $(this).find('ul').slideDown()
            } else {
                $(this).find('ul').slideUp()
            }
        });
    }
$(document).ready(function () {
    swiperInit();
    App.SetBackground()
    App.InitLazyLoad()
    Header.LanguageWrapper()
    Header.ToggleMenuMobile()
    Header.TopheadMapping()
    Header.SearchBoxMobile()
    Header.MobileMapping()
    Header.SearchBox()
    headerfixed()
    toggleHeader()
    Accordion()
    sticky()
    tabActive()
    form()
    // scroll()
    ButtonPrint()
    mobileListItem()
})