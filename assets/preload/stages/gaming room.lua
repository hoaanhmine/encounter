function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'back1', -90, -210);
	setScrollFactor('stageback', 0.84, 0.87);
	scaleObject('stageback', 0.29, 0.27)
	
	makeLuaSprite('stageback2', 'back3', -90, -210);
	setScrollFactor('stageback2', 0.84, 0.87);
	scaleObject('stageback2', 0.29, 0.28)

	makeLuaSprite('stageback3', 'back4', -90, -210);
	setScrollFactor('stageback3', 0.84, 0.87);
	scaleObject('stageback3', 0.29, 0.28)

	makeLuaSprite('stagefront', 'back2', 10, -170);
	setScrollFactor('stagefront', 0.98, 0.9);
	scaleObject('stagefront', 0.28, 0.28);

    addLuaSprite('stageback', false)
    addLuaSprite('stagefront', false);
    addLuaSprite('stageback3', true)
    addLuaSprite('stageback2', true)
	
	end

    function onEvent(name,value1,value2)
    	if name == 'Play Animation' then
    		if value2 == '0' then

    	setproperty('stageback.visible', true)
    	setproperty('stagefront.visible', true)
    	setproperty('stageback2.visible', true)	
    	setproperty('stageback3.visible', false)
    end
    
    	    if value2 == '1' then

        setproperty('stageback.visible', true)
    	setproperty('stagefront.visible', true)
    	setproperty('stageback2.visible', false)	
    	setproperty('stageback3.visible', true)
    end
    end
    end	    		