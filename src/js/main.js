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
            $('.back-drop').removeClass('active')
            $('.searchbox').removeClass('active')
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
      
}

// function ChangeColorSvg() {
//     jQuery('img.svg').each(function(){
//         var $img = jQuery(this);
//         var imgID = $img.attr('id');
//         var imgClass = $img.attr('class');
//         var imgURL = $img.attr('src');

//         jQuery.get(imgURL, function(data) {
//             // Get the SVG tag, ignore the rest
//             var $svg = jQuery(data).find('svg');

//             // Add replaced image's ID to the new SVG
//             if(typeof imgID !== 'undefined') {
//                 $svg = $svg.attr('id', imgID);
//             }
//             // Add replaced image's classes to the new SVG
//             if(typeof imgClass !== 'undefined') {
//                 $svg = $svg.attr('class', imgClass+' replaced-svg');
//             }

//             // Remove any invalid XML tags as per http://validator.w3.org
//             $svg = $svg.removeAttr('xmlns:a');

//             // Replace image with new SVG
//             $img.replaceWith($svg);

//         }, 'xml');

//     });
// }
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
    // ChangeColorSvg()
})