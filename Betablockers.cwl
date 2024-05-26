cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  teoptic-betablockers-p1---primary:
    run: teoptic-betablockers-p1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  betablockers-p1-100mg---primary:
    run: betablockers-p1-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: teoptic-betablockers-p1---primary/output
  betablockers-p1-cyclopenthiazide---primary:
    run: betablockers-p1-cyclopenthiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: betablockers-p1-100mg---primary/output
  betablockers-p1-maleate---primary:
    run: betablockers-p1-maleate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: betablockers-p1-cyclopenthiazide---primary/output
  betablockers-p1-acebutolol---primary:
    run: betablockers-p1-acebutolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: betablockers-p1-maleate---primary/output
  betablockers-p1-propanolol---primary:
    run: betablockers-p1-propanolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: betablockers-p1-acebutolol---primary/output
  betablockers-p1-lopresor---primary:
    run: betablockers-p1-lopresor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: betablockers-p1-propanolol---primary/output
  betablockers-p1-labetalol---primary:
    run: betablockers-p1-labetalol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: betablockers-p1-lopresor---primary/output
  betablockers-p1-carvedilol---primary:
    run: betablockers-p1-carvedilol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: betablockers-p1-labetalol---primary/output
  betablockers-p1-celectol---primary:
    run: betablockers-p1-celectol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: betablockers-p1-carvedilol---primary/output
  betablockers-p1-visken---primary:
    run: betablockers-p1-visken---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: betablockers-p1-celectol---primary/output
  betablockers-p1-tablet---primary:
    run: betablockers-p1-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: betablockers-p1-visken---primary/output
  betablockers-p1-025mg---primary:
    run: betablockers-p1-025mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: betablockers-p1-tablet---primary/output
  betablockers-p1-clopamide---primary:
    run: betablockers-p1-clopamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: betablockers-p1-025mg---primary/output
  betablockers-p1-betaloc---primary:
    run: betablockers-p1-betaloc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: betablockers-p1-clopamide---primary/output
  betablockers-p1-betaadalat---primary:
    run: betablockers-p1-betaadalat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: betablockers-p1-betaloc---primary/output
  betablockers-p1-metoprolol---primary:
    run: betablockers-p1-metoprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: betablockers-p1-betaadalat---primary/output
  betablockers-p1-3125mg---primary:
    run: betablockers-p1-3125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: betablockers-p1-metoprolol---primary/output
  betablockers-p1-375mg---primary:
    run: betablockers-p1-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: betablockers-p1-3125mg---primary/output
  betablockers-p1-angilol---primary:
    run: betablockers-p1-angilol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: betablockers-p1-375mg---primary/output
  betablockers-p1-trasicor---primary:
    run: betablockers-p1-trasicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: betablockers-p1-angilol---primary/output
  betablockers-p1-timolol---primary:
    run: betablockers-p1-timolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: betablockers-p1-trasicor---primary/output
  betablockers-p1-cardicor---primary:
    run: betablockers-p1-cardicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: betablockers-p1-timolol---primary/output
  betablockers-p1-propanix---primary:
    run: betablockers-p1-propanix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: betablockers-p1-cardicor---primary/output
  betablockers-p1-oxprenolol---primary:
    run: betablockers-p1-oxprenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: betablockers-p1-propanix---primary/output
  betablockers-p1-625mg---primary:
    run: betablockers-p1-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: betablockers-p1-oxprenolol---primary/output
  betablockers-p1-vivacor---primary:
    run: betablockers-p1-vivacor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: betablockers-p1-625mg---primary/output
  betablockers-p1-apsolol---primary:
    run: betablockers-p1-apsolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: betablockers-p1-vivacor---primary/output
  betablockers-p1-chlortalidone---primary:
    run: betablockers-p1-chlortalidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: betablockers-p1-apsolol---primary/output
  betablockers-p1-labrocol---primary:
    run: betablockers-p1-labrocol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: betablockers-p1-chlortalidone---primary/output
  betablockers-p1-cosopt---primary:
    run: betablockers-p1-cosopt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: betablockers-p1-labrocol---primary/output
  betablockers-p1-atenix---primary:
    run: betablockers-p1-atenix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: betablockers-p1-cosopt---primary/output
  betablockers-p1-gelforming---primary:
    run: betablockers-p1-gelforming---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: betablockers-p1-atenix---primary/output
  betablockers-p1-400mg---primary:
    run: betablockers-p1-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: betablockers-p1-gelforming---primary/output
  betablockers-p1-modifiedrelease---primary:
    run: betablockers-p1-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: betablockers-p1-400mg---primary/output
  betablockers-p1-atenolol---primary:
    run: betablockers-p1-atenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: betablockers-p1-modifiedrelease---primary/output
  betablockers-p1-emcor---primary:
    run: betablockers-p1-emcor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: betablockers-p1-atenolol---primary/output
  betablockers-p1-allergan---primary:
    run: betablockers-p1-allergan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: betablockers-p1-emcor---primary/output
  betablockers-p1-200mg---primary:
    run: betablockers-p1-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: betablockers-p1-allergan---primary/output
  sectral-betablockers-p1---primary:
    run: sectral-betablockers-p1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: betablockers-p1-200mg---primary/output
  betablockers-p1-bausch---primary:
    run: betablockers-p1-bausch---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: sectral-betablockers-p1---primary/output
  betablockers-p1-levobunolol---primary:
    run: betablockers-p1-levobunolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: betablockers-p1-bausch---primary/output
  betablockers-p1-160mg---primary:
    run: betablockers-p1-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: betablockers-p1-levobunolol---primary/output
  betablockers-p1-sotacor---primary:
    run: betablockers-p1-sotacor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: betablockers-p1-160mg---primary/output
  betablockers-p1-bedranol---primary:
    run: betablockers-p1-bedranol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: betablockers-p1-sotacor---primary/output
  betablockers-p1-sotalol---primary:
    run: betablockers-p1-sotalol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: betablockers-p1-bedranol---primary/output
  betablockers-p1-metipranolol---primary:
    run: betablockers-p1-metipranolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: betablockers-p1-sotalol---primary/output
  betablockers-p1-glauopt---primary:
    run: betablockers-p1-glauopt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: betablockers-p1-metipranolol---primary/output
  betablockers-p1-tenchlor---primary:
    run: betablockers-p1-tenchlor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: betablockers-p1-glauopt---primary/output
  betablockers-p1-suspension---primary:
    run: betablockers-p1-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: betablockers-p1-tenchlor---primary/output
  betablockers-p1-betacardone---primary:
    run: betablockers-p1-betacardone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: betablockers-p1-suspension---primary/output
  betablockers-p1-carteolol---primary:
    run: betablockers-p1-carteolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: betablockers-p1-betacardone---primary/output
  betablockers-p1-antipressan---primary:
    run: betablockers-p1-antipressan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: betablockers-p1-carteolol---primary/output
  betablockers-p1-metoro---primary:
    run: betablockers-p1-metoro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: betablockers-p1-antipressan---primary/output
  betablockers-p1-trandate---primary:
    run: betablockers-p1-trandate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: betablockers-p1-metoro---primary/output
  betablockers-p1-betagan---primary:
    run: betablockers-p1-betagan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: betablockers-p1-trandate---primary/output
  betablockers-p1-betaxolol---primary:
    run: betablockers-p1-betaxolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: betablockers-p1-betagan---primary/output
  betablockers-p1-betim---primary:
    run: betablockers-p1-betim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: betablockers-p1-betaxolol---primary/output
  betablockers-p1-dorzolamide---primary:
    run: betablockers-p1-dorzolamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: betablockers-p1-betim---primary/output
  betablockers-p1-alcon---primary:
    run: betablockers-p1-alcon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: betablockers-p1-dorzolamide---primary/output
  betablockers-p1-monocor---primary:
    run: betablockers-p1-monocor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: betablockers-p1-alcon---primary/output
  betablockers-p1-solution---primary:
    run: betablockers-p1-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: betablockers-p1-monocor---primary/output
  betablockers-p1-amiloride---primary:
    run: betablockers-p1-amiloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: betablockers-p1-solution---primary/output
  betablockers-p1-drops---primary:
    run: betablockers-p1-drops---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: betablockers-p1-amiloride---primary/output
  betablockers-p1-nebivolol---primary:
    run: betablockers-p1-nebivolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: betablockers-p1-drops---primary/output
  betablockers-p1-betaprograne---primary:
    run: betablockers-p1-betaprograne---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: betablockers-p1-nebivolol---primary/output
  betablockers-p1-spectrum---primary:
    run: betablockers-p1-spectrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: betablockers-p1-betaprograne---primary/output
  betablockers-p1-atenamin---primary:
    run: betablockers-p1-atenamin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: betablockers-p1-spectrum---primary/output
  betablockers-p1-syprol---primary:
    run: betablockers-p1-syprol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: betablockers-p1-atenamin---primary/output
  betablockers-p1-glaucol---primary:
    run: betablockers-p1-glaucol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: betablockers-p1-syprol---primary/output
  betablockers-p1-lennon---primary:
    run: betablockers-p1-lennon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: betablockers-p1-glaucol---primary/output
  inderal-betablockers-p1---primary:
    run: inderal-betablockers-p1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: betablockers-p1-lennon---primary/output
  eucardic-betablockers-p1---primary:
    run: eucardic-betablockers-p1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: inderal-betablockers-p1---primary/output
  betablockers-p1-glauline---primary:
    run: betablockers-p1-glauline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: eucardic-betablockers-p1---primary/output
  betablockers-p1-tenormin---primary:
    run: betablockers-p1-tenormin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: betablockers-p1-glauline---primary/output
  betoptic-betablockers-p1---primary:
    run: betoptic-betablockers-p1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: betablockers-p1-tenormin---primary/output
  betablockers-p1-ampoule---primary:
    run: betablockers-p1-ampoule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: betoptic-betablockers-p1---primary/output
  betablockers-p1-congescor---primary:
    run: betablockers-p1-congescor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: betablockers-p1-ampoule---primary/output
  betablockers-p1-mepranix---primary:
    run: betablockers-p1-mepranix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: betablockers-p1-congescor---primary/output
  betablockers-p1-berkolol---primary:
    run: betablockers-p1-berkolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: betablockers-p1-mepranix---primary/output
  corgaretic-betablockers-p1---primary:
    run: corgaretic-betablockers-p1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: betablockers-p1-berkolol---primary/output
  betablockers-p1-bipranix---primary:
    run: betablockers-p1-bipranix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: corgaretic-betablockers-p1---primary/output
  betablockers-p1-pindolol---primary:
    run: betablockers-p1-pindolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: betablockers-p1-bipranix---primary/output
  betablockers-p1-prestim---primary:
    run: betablockers-p1-prestim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: betablockers-p1-pindolol---primary/output
  betablockers-p1-nifedipine---primary:
    run: betablockers-p1-nifedipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: betablockers-p1-prestim---primary/output
  betablockers-p1-celiprolol---primary:
    run: betablockers-p1-celiprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: betablockers-p1-nifedipine---primary/output
  betablockers-p1-capsule---primary:
    run: betablockers-p1-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: betablockers-p1-celiprolol---primary/output
  betablockers-p1-nadolol---primary:
    run: betablockers-p1-nadolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: betablockers-p1-capsule---primary/output
  betablockers-p1-rapranol---primary:
    run: betablockers-p1-rapranol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: betablockers-p1-nadolol---primary/output
  betablockers-p1-actavis---primary:
    run: betablockers-p1-actavis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: betablockers-p1-rapranol---primary/output
  totaretic-betablockers-p1---primary:
    run: totaretic-betablockers-p1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: betablockers-p1-actavis---primary/output
  betablockers-p1-totamol---primary:
    run: betablockers-p1-totamol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: totaretic-betablockers-p1---primary/output
  betablockers-p1-timoptol---primary:
    run: betablockers-p1-timoptol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: betablockers-p1-totamol---primary/output
  preservative-betablockers-p1---primary:
    run: preservative-betablockers-p1---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: betablockers-p1-timoptol---primary/output
  betablockers-p1-tartrate---primary:
    run: betablockers-p1-tartrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: preservative-betablockers-p1---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: betablockers-p1-tartrate---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
