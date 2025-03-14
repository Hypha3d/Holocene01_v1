RSRC                    BehaviorTree            ��������                                            5      AnimationPlayer    .    prefetch_nodepath_vars    var/speed/name    var/speed/type    var/speed/value    var/speed/hint    var/speed/hint_string    resource_local_to_scene    resource_name    script    custom_name 	   children    group    output_var 
   run_limit    count_policy    distance_min    distance_max    target_var    value_source    saved_value    await_completion    animation_player    animation_name    blend    speed 	   from_end 	   duration    process_pause    start_cooled    trigger_on_failure    cooldown_state_var 
   speed_var    max_angle_deviation    time_limit    flank_side 
   range_min 
   range_max    position_var    target_position_var 
   tolerance 
   avoid_var    node    method    result_var    args_include_delta    args    run_chance    approach_distance    description    blackboard_plan 
   root_task       Script *   res://demo/ai/tasks/get_first_in_group.gd ��������   Script     res://demo/ai/tasks/in_range.gd ��������   Script #   res://demo/ai/tasks/face_target.gd ��������   Script !   res://demo/ai/tasks/back_away.gd ��������   Script +   res://demo/ai/tasks/select_flanking_pos.gd ��������   Script "   res://demo/ai/tasks/arrive_pos.gd ��������   Script    res://demo/ai/tasks/pursue.gd ��������-      local://BlackboardPlan_ewfwq %         local://BTAction_2murg �         local://BTRunLimit_60b8b �         local://BTCondition_m15aa          local://BTAction_oc76s Z         local://BBNode_6d0yy �         local://BTPlayAnimation_wsspf �         local://BBNode_w45kn "         local://BTPlayAnimation_d2lad e         local://BTSequence_e0f8v �         local://BTCooldown_3tvjt          local://BTCondition_x0uu7 L         local://BBNode_wksgd �         local://BTPlayAnimation_umlwj �         local://BTAction_6q0k4          local://BTTimeLimit_6eii7 b         local://BTAlwaysSucceed_ieord �         local://BBNode_ayt56 �         local://BTPlayAnimation_l1tdg          local://BTWait_hh8ys ^         local://BTSequence_cgwor �         local://BTAction_n0rxm �         local://BBNode_icf24 L         local://BTPlayAnimation_iiei3 �         local://BTAction_g2up4 �         local://BTAction_d5lkr ,         local://BBNode_h4k80 `         local://BTPlayAnimation_40yja �         local://BTWait_2dc1v �         local://BBNode_slipn          local://BTPlayAnimation_qnpjq G         local://BBNode_qaqnn �         local://BTCallMethod_yd0fn �         local://BTSequence_ws7nq          local://BTProbability_omklt �         local://BTCondition_d6aub �         local://BBNode_rpwld ,         local://BTPlayAnimation_dug2k o         local://BTAction_wc11r �         local://BBNode_aw5jj          local://BTPlayAnimation_3aihc E         local://BTWait_1o163 �         local://BTSequence_vx4uy �         local://BTSelector_ddhoo       :   res://demo/ai/trees/tutorial/tutorial_08_final_touch.tres o         BlackboardPlan       ,      speed                  �C                  10,1000,10 
      	   BTAction    
                ,      player    ,      target    BTRunLimit                      
         BTCondition    
                              HC   ,      target 	   BTAction    
               ,      target    BBNode                 	         AnimationPlayer 
         BTPlayAnimation            �@               ,   	   attack_1 
         BBNode                 	         AnimationPlayer 
         BTPlayAnimation            �@               ,   	   attack_2 
         BTSequence                                                 
         BTCooldown            �@               	   
         BTCondition    
                              HC   ,      target    BBNode                 	         AnimationPlayer 
         BTPlayAnimation                   ,      walk 
      	   BTAction    
            !   ,      speed "   )   ffffff�?   BTTimeLimit    #         @                  
         BTAlwaysSucceed                      
         BBNode                 	         AnimationPlayer 
         BTPlayAnimation                   ,      idle 
         BTWait            @@
         BTSequence                                                          
      	   BTAction    
               ,      target $          %      �  &      �  '   ,      pos    BBNode                 	         AnimationPlayer 
         BTPlayAnimation                   ,      walk 
      	   BTAction    
            (   ,      pos !   ,      speed )        HB*   ,       	   BTAction    
               ,      target    BBNode                 	         AnimationPlayer 
         BTPlayAnimation                   ,      throw_prepare 
         BTWait    
         BBNode                 	         AnimationPlayer 
         BTPlayAnimation            �@               ,      throw 
         BBNode                	         . 
         BTCallMethod    +            ,   ,      throw_ninja_star 
         BTSequence                                                                                      
         BTProbability    0        �>               !   
         BTCondition    
                    HC       @F   ,      target    BBNode                 	         AnimationPlayer 
         BTPlayAnimation             $      ,      walk 
      	   BTAction    
               ,      target !   ,      speed 1        �B   BBNode                 	         AnimationPlayer 
         BTPlayAnimation             '      ,      idle 
         BTWait             ?
         BTSequence                   #         %         &         (         )   
         BTSelector                            
                  "         *   
         BehaviorTree    2      �  And for the final touch, we've added throwing ninja stars to our previous behavior. The [dec]Probability[/dec] decorator adds a little variance so that we don't throw ninja stars all the time. This decorator executes its child task with a certain probability, so when it's not 100%, sometimes it will return [FAILURE] instead. Some of the work in this [comp]Sequence[/comp] is done by actions you've seen already, and the [act]CallMethod[/act] action invokes the [color=cyan]throw_ninja_star[/color] method on the agent node. By the way, the agent is always the owner of the BTPlayer node, which executes this behavior tree.

This concludes our tutorial. Hopefully, this little endeavor has been useful to you. You can learn more by reading the [b]Online Documentation[/b], which covers topics like creating your own tasks. Also, check out the [b]Showcase[/b], which presents behaviors of agents made for this little demo. Simply click "End Tutorial" to return to the [b]Showcase[/b]. 3             4         +   
      RSRC