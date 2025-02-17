  (module D_DO-34_SOD68_P10.16mm_Horizontal (layer F.Cu) (tedit 5AE50CD5)
    (at {{x}} {{y}} 90)
    (descr "Diode, DO-34_SOD68 series, Axial, Horizontal, pin pitch=10.16mm, , length*diameter=3.04*1.6mm^2, , https://www.nxp.com/docs/en/data-sheet/KTY83_SER.pdf")
    (tags "Diode DO-34_SOD68 series Axial Horizontal pin pitch 10.16mm  length 3.04mm diameter 1.6mm")
    (fp_text reference D{{num}} (at 5.08 -1.92) (layer F.SilkS)
      (effects (font (size 1 1) (thickness 0.15)))
    )
    (fp_text value D_DO-34_SOD68_P10.16mm_Horizontal (at 5.08 1.92) (layer F.Fab)
      (effects (font (size 1 1) (thickness 0.15)))
    )
    (fp_line (start 3.56 -0.8) (end 3.56 0.8) (layer F.Fab) (width 0.1))
    (fp_line (start 3.56 0.8) (end 6.6 0.8) (layer F.Fab) (width 0.1))
    (fp_line (start 6.6 0.8) (end 6.6 -0.8) (layer F.Fab) (width 0.1))
    (fp_line (start 6.6 -0.8) (end 3.56 -0.8) (layer F.Fab) (width 0.1))
    (fp_line (start 0 0) (end 3.56 0) (layer F.Fab) (width 0.1))
    (fp_line (start 10.16 0) (end 6.6 0) (layer F.Fab) (width 0.1))
    (fp_line (start 4.016 -0.8) (end 4.016 0.8) (layer F.Fab) (width 0.1))
    (fp_line (start 4.116 -0.8) (end 4.116 0.8) (layer F.Fab) (width 0.1))
    (fp_line (start 3.916 -0.8) (end 3.916 0.8) (layer F.Fab) (width 0.1))
    (fp_line (start 3.44 -0.92) (end 3.44 0.92) (layer F.SilkS) (width 0.12))
    (fp_line (start 3.44 0.92) (end 6.72 0.92) (layer F.SilkS) (width 0.12))
    (fp_line (start 6.72 0.92) (end 6.72 -0.92) (layer F.SilkS) (width 0.12))
    (fp_line (start 6.72 -0.92) (end 3.44 -0.92) (layer F.SilkS) (width 0.12))
    (fp_line (start 0.99 0) (end 3.44 0) (layer F.SilkS) (width 0.12))
    (fp_line (start 9.17 0) (end 6.72 0) (layer F.SilkS) (width 0.12))
    (fp_line (start 4.016 -0.92) (end 4.016 0.92) (layer F.SilkS) (width 0.12))
    (fp_line (start 4.136 -0.92) (end 4.136 0.92) (layer F.SilkS) (width 0.12))
    (fp_line (start 3.896 -0.92) (end 3.896 0.92) (layer F.SilkS) (width 0.12))
    (fp_line (start -1 -1.05) (end -1 1.05) (layer F.CrtYd) (width 0.05))
    (fp_line (start -1 1.05) (end 11.16 1.05) (layer F.CrtYd) (width 0.05))
    (fp_line (start 11.16 1.05) (end 11.16 -1.05) (layer F.CrtYd) (width 0.05))
    (fp_line (start 11.16 -1.05) (end -1 -1.05) (layer F.CrtYd) (width 0.05))
    (pad 1 thru_hole rect (at 0 0) (size 1.5 1.5) (drill 0.75) (layers *.Cu *.Mask)
    (net {{rownetnum}} {{rownetname}}))
    (pad 2 thru_hole oval (at 10.16 0) (size 1.5 1.5) (drill 0.75) (layers *.Cu *.Mask)
    (net {{diodenetnum}} {{diodenetname}}))
    (fp_text user %R (at 5.308 0) (layer F.Fab)
      (effects (font (size 0.608 0.608) (thickness 0.0912)))
    )
    (fp_text user K (at 0 -1.75) (layer F.Fab)
      (effects (font (size 1 1) (thickness 0.15)))
    )
    (fp_text user K (at 0 -1.75) (layer F.SilkS)
      (effects (font (size 1 1) (thickness 0.15)))
    )
    (model ${KISYS3DMOD}/Diode_THT.3dshapes/D_DO-34_SOD68_P10.16mm_Horizontal.wrl
      (at (xyz 0 0 0))
      (scale (xyz 1 1 1))
      (rotate (xyz 0 0 0))
    )
  )
