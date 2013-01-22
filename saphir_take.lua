quest tauschquest begin
    state start begin
        when 9005.take with item.vnum != SAPHIRERZ begin
            say_title("Hallo "..pc.get_name()..",")
            say("möchtest du Saphir-Steine herstellen?")
            say("")
            say_title("Informationen über Saphir-Steine")
            say("Bitte beachte, dass du mindestens 5 Saphireze")
            say("zum herstellen eines Saphir-Steines benötigst!")
            local bla = select("Saphir herstellen","Abbrechen")
            if bla == 2 then
                return
            else
                if pc.count_item(SAPHIRERZ) < 5 then
                    say_title("Abbruch")
                    say("Es tut mir leid, aber dir fehlen Erze!")
                    return
                end
                local r = math.random(1, 100) 
                pc.remove_item(SAPHIRERZ, 5)
                if 40 <= r then
                    syschat("Die Veredelung ist leider fehlgeschlagen.")
                    return
                end
                pc.give_item(SAPHIRSTEIN, 1)
                syschat("Herzlichen Glückwunsch. Die Veredelung war erfolgreich.")
            end
        end
    end
end