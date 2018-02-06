" TODO hex colours currently out of date with ANSI colours
"
let s:N1 = [ '#141413' , '#aeee00' , 0 , 2 ]
let s:N2 = [ '#f4cf86' , '#45413b' , 15 , 238 ]
let s:N3 = [ '#8cffba' , '#242321' , 7 , 0 ]
let s:N4 = [ '#666462' , 241 ]

let s:I1 = [ '#141413' , '#0a9dff' , 0 , 12  ]
let s:I2 = [ '#f4cf86' , '#005fff' , 15 , 4 ]
let s:I3 = [ '#8cffba' , '#242321' , 7 , 0 ]

let s:V1 = [ '#141413' , '#ffa724' , 232 , 11 ]
let s:V2 = [ '#000000' , '#fade3e' , 16  , 221 ]
let s:V3 = [ '#000000' , '#b88853' , 16  , 137 ]
let s:V4 = [ '#c7915b' , 173 ]

let s:PA = [ '#f4cf86' , 222 ]
let s:RE = [ '#ff9eb8' , 211 ]

let s:IA = [ s:N3[1] , s:N2[1] , 8 , 0 , '' ]

let g:airline#themes#magik#palette = {}

let g:airline#themes#magik#palette.accents = {
      \ 'red': [ '#ff2c4b' , '' , 196 , '' , '' ]
      \ }

let g:airline#themes#magik#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#magik#palette.normal_modified = {
      \ 'airline_b': [ s:N2[0]   , s:N2[1]   , s:N2[2]   , s:N2[3]   , ''     ] ,
      \ 'airline_c': [ s:N3[0]   , s:N3[1]   , s:N3[2]   , s:N3[3]   , ''     ] }

let g:airline#themes#magik#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#magik#palette.insert_modified = {
      \ 'airline_c': [ s:I3[0]   , s:I3[1]   , s:I3[2]   , s:I3[3]   , ''     ] }
let g:airline#themes#magik#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , s:PA[0]   , s:I1[2]   , s:PA[1]   , ''     ] }


let g:airline#themes#magik#palette.replace = copy(airline#themes#magik#palette.insert)
let g:airline#themes#magik#palette.replace.airline_a = [ s:I1[0] , s:RE[0] , s:I1[2] , s:RE[1] , '' ]



let g:airline#themes#magik#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#magik#palette.visual_modified = {
      \ 'airline_c': [ s:V3[0]   , s:V4[0]   , s:V3[2]   , s:V4[1]   , ''     ] }


let g:airline#themes#magik#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#magik#palette.inactive_modified = {
      \ 'airline_c': [ s:V1[1]   , ''        , s:V1[3]   , ''        , ''     ] }


" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#magik#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ [ '#d7d7ff' , '#5f00af' , 15 , 0  , ''     ],
        \ [ '#ffffff' , '#875fd7' , 231 , 4  , ''     ],
        \ [ '#5f00af' , '#ffffff' , 12  , 15 , 'bold' ])
endif
