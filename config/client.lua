local bags = {[40] = true, [41] = true, [44] = true, [45] = true}

return {
    enableExtraMenu = false,
    enableVehicleDoors = false,
    flipTime = 15000,

    menuItems = {
        {
            id = 'interactions',
            icon = 'hands-asl-interpreting',
            label = 'Interactions',
            items = {
                {
                    id = 'robbery',
                    icon = 'user-ninja',
                    label = 'Robbery',
                    items = {
                        {
                            id = 'robPlayer',
                            icon = 'people-robbery',
                            label = 'Rob',
                            event = 'ss_playerinteraction:client:rob',
                            keepOpen = false,
                        },
                    },
                },
                {
                    id = 'escorting',
                    icon = 'people-arrows',
                    label = 'Escorting',
                    items = {
                        {
                            id = 'escortPlayer',
                            icon = 'people-pulling',
                            label = 'Escort',
                            event = 'ss_playerinteraction:client:escort',
                            keepOpen = false,
                        },
						{
                            id = 'unescortPlayer',
                            icon = 'people-arrows',
                            label = 'Unescort',
                            event = 'ss_playerinteraction:client:unescort',
                            keepOpen = false,
                        },
                    },
                },
                {
                    id = 'carrying',
                    icon = 'hand-holding',
                    label = 'Carrying',
                    items = {
						{
                            id = 'carryPlayer',
                            icon = 'hand-holding',
                            label = 'Carry',
                            event = 'ss_playerinteraction:client:carry',
                            keepOpen = false,
                        },
						{
                            id = 'uncarryPlayer',
                            icon = 'hand-point-down',
                            label = 'Uncarry',
                            event = 'ss_playerinteraction:client:uncarry',
                            keepOpen = false,
                        },
                    },
                },
                {
                    id = 'vehicleinout',
                    icon = 'car-side',
                    label = 'Vehicle IN/OUT',
                    items = {
                        {
                            id = 'playerInVehicle',
                            icon = 'car-side',
                            label = 'Put In Vehicle',
                            event = 'ss_playerinteraction:client:putInVehicle',
                            keepOpen = false,
                        },
                        {
                            id = 'playerOutVehicle',
                            icon = 'car-side',
                            label = 'Take Out Vehicle',
                            event = 'ss_playerinteraction:client:removeFromVehicle',
                            keepOpen = false,
                        },
                    },
                },
            },
        },
        {
            id = 'general',
            icon = 'rectangle-list',
            label = 'General',
            items = {
                {
                    id = 'info',
                    icon = 'info',
                    label = 'Info',
                    items = {
                        {
                            id = 'services',
                            icon = 'building-ngo',
                            label = 'Services',
                            serverEvent = 'services:server:getCounts',
                            keepOpen = false,
                        },
                        {
                            id = 'combatlog',
                            icon = 'person-walking-arrow-right',
                            label = 'Combat Log',
                            event = 'ss_combatlog:client:togglecombatlog',
                            keepOpen = false,
                        },
                        {
                            id = 'feedback',
                            icon = 'envelope',
                            label = 'Feedback',
                            event = 'feedback:client:show',
                            keepOpen = false,
                        },
					},
                },
                {
                    id = 'misc',
                    icon = 'viruses',
                    label = 'Misc',
                    items = {
                        {
                            id = 'propStuck',
                            icon = 'user-minus',
                            label = 'Prop Stuck',
                            event = 'propremoval:client:remove',
                            keepOpen = false,
                        },
					},
                },
                -- {
                --     id = 'clothesMenu',
                --     icon = 'shirt',
                --     label = 'Clothing',
                --     items = {
                --         {
                --             id = 'hair',
                --             icon = 'user',
                --             label = 'Hair',
                --             event = 'qb-radialmenu:ToggleClothing',
                --             args = {id = 'Hair'},
                --         },
                --         {
                --             id = 'ear',
                --             icon = 'ear-deaf',
                --             label = 'Ear Piece',
                --             event = 'qb-radialmenu:ToggleProps',
                --             args = 'Ear',
                --         },
                --         {
                --             id = 'neck',
                --             icon = 'user-tie',
                --             label = 'Neck',
                --             event = 'qb-radialmenu:ToggleClothing',
                --             args = {id = 'Neck'},
                --         },
                --         {
                --             id = 'top',
                --             icon = 'shirt',
                --             label = 'Top',
                --             event = 'qb-radialmenu:ToggleClothing',
                --             args = {id = 'Top'},
                --         },
                --         {
                --             id = 'shirt',
                --             icon = 'shirt',
                --             label = 'Shirt',
                --             event = 'qb-radialmenu:ToggleClothing',
                --             args = {id = 'Shirt'},
                --         },
                --         {
                --             id = 'pants',
                --             icon = 'user',
                --             label = 'Pants',
                --             event = 'qb-radialmenu:ToggleClothing',
                --             args = {id = 'Pants'},
                --         },
                --         {
                --             id = 'shoes',
                --             icon = 'shoe-prints',
                --             label = 'Shoes',
                --             event = 'qb-radialmenu:ToggleClothing',
                --             args = {id = 'Shoes'},
                --         },
                --         {
                --             id = 'clothingExtras',
                --             icon = 'plus',
                --             label = 'Extras',
                --             items = {
                --                 {
                --                     id = 'hat',
                --                     icon = 'hat-cowboy-side',
                --                     label = 'Hat',
                --                     event = 'qb-radialmenu:ToggleProps',
                --                     args = 'Hat',
                --                 },
                --                 {
                --                     id = 'glasses',
                --                     icon = 'glasses',
                --                     label = 'Glasses',
                --                     event = 'qb-radialmenu:ToggleProps',
                --                     args = 'Glasses',
                --                 },
                --                 {
                --                     id = 'visor',
                --                     icon = 'hat-cowboy-side',
                --                     label = 'Visor',
                --                     event = 'qb-radialmenu:ToggleProps',
                --                     args = 'Visor',
                --                 },
                --                 {
                --                     id = 'mask',
                --                     icon = 'masks-theater',
                --                     label = 'Mask',
                --                     event = 'qb-radialmenu:ToggleClothing',
                --                     args = {id = 'Mask'},
                --                 },
                --                 {
                --                     id = 'vest',
                --                     icon = 'vest',
                --                     label = 'Vest',
                --                     event = 'qb-radialmenu:ToggleClothing',
                --                     args = {id = 'Vest'},
                --                 },
                --                 {
                --                     id = 'bag',
                --                     icon = 'bag',
                --                     label = 'Bag',
                --                     event = 'qb-radialmenu:ToggleClothing',
                --                     args = {id = 'Bag'},
                --                 },
                --                 {
                --                     id = 'bracelet',
                --                     icon = 'user',
                --                     label = 'Bracelet',
                --                     event = 'qb-radialmenu:ToggleProps',
                --                     args = 'Bracelet',
                --                 },
                --                 {
                --                     id = 'watch',
                --                     icon = 'stopwatch',
                --                     label = 'Watch',
                --                     event = 'qb-radialmenu:ToggleProps',
                --                     args = 'Watch',
                --                 },
                --                 {
                --                     id = 'gloves',
                --                     icon = 'mitten',
                --                     label = 'Gloves',
                --                     event = 'qb-radialmenu:ToggleClothing',
                --                     args = {id = 'Gloves'},
                --                 },
                --             },
                --         },
                --     },
                -- },
            },
        },
    },

    jobItems = {
        police = {
            {
                id = 'PInteractions',
                icon = 'hands-asl-interpreting',
                label = 'Interactions',
                items = {
                    {
                        id = 'pEscort',
                        icon = 'people-pulling',
                        label = 'Escort',
                        event = 'ss_playerinteraction:client:escort',
                        keepOpen = false,
                    },
                    {
                        id = 'pUnescort',
                        icon = 'people-arrows',
                        label = 'Unescort',
                        event = 'ss_playerinteraction:client:unescort',
                        keepOpen = false,
                    },
                    {
                        id = 'pCarry',
                        icon = 'hand-holding',
                        label = 'Carry',
                        event = 'ss_playerinteraction:client:carry',
                        keepOpen = false,
                    },
                    {
                        id = 'pUncarry',
                        icon = 'hand-point-down',
                        label = 'Uncarry',
                        event = 'ss_playerinteraction:client:uncarry',
                        keepOpen = false,
                    },
                    {
                        id = 'pPutInVehicle',
                        icon = 'car-side',
                        label = 'Put In Vehicle',
                        event = 'ss_playerinteraction:client:putInVehicle',
                        keepOpen = false,
                    },
                    {
                        id = 'pGetOutVehicle',
                        icon = 'car-side',
                        label = 'Take Out Vehicle',
                        event = 'ss_playerinteraction:client:removeFromVehicle',
                        keepOpen = false,
                    },
                },
            },
        },
        civilprotection = {
            {
                id = 'CPInteractions',
                icon = 'hands-asl-interpreting',
                label = 'Interactions',
                items = {
                    {
                        id = 'cpDetachStretcher',
                        icon = 'link-slash',
                        label = 'Detach Stretcher',
                        event = 'ss_stretcher:client:detachStretcherFromCarrier',
                        keepOpen = false,
                    },
                    {
                        id = 'cpCarry',
                        icon = 'hand-holding',
                        label = 'Carry',
                        event = 'ss_playerinteraction:client:carry',
                        keepOpen = false,
                    },
                    {
                        id = 'cpUncarry',
                        icon = 'hand-point-down',
                        label = 'Uncarry',
                        event = 'ss_playerinteraction:client:uncarry',
                        keepOpen = false,
                    },
                    {
                        id = 'cpPutInVehicle',
                        icon = 'car-side',
                        label = 'Put In Vehicle',
                        event = 'ss_playerinteraction:client:putInVehicle',
                        keepOpen = false,
                    },
                    {
                        id = 'cpGetOutVehicle',
                        icon = 'car-side',
                        label = 'Take Out Vehicle',
                        event = 'ss_playerinteraction:client:removeFromVehicle',
                        keepOpen = false,
                    },
                },
            },
        },
        ambulance = {
            {
                id = 'AInteractions',
                icon = 'hands-asl-interpreting',
                label = 'Interactions',
                items = {
                    {
                        id = 'aDetachStretcher',
                        icon = 'link-slash',
                        label = 'Detach Stretcher',
                        event = 'ss_stretcher:client:detachStretcherFromCarrier',
                        keepOpen = false,
                    },
                    {
                        id = 'aCarry',
                        icon = 'hand-holding',
                        label = 'Carry',
                        event = 'ss_playerinteraction:client:carry',
                        keepOpen = false,
                    },
                    {
                        id = 'aUncarry',
                        icon = 'hand-point-down',
                        label = 'Uncarry',
                        event = 'ss_playerinteraction:client:uncarry',
                        keepOpen = false,
                    },
                },
            },
        },
        mechanic = {
            {
                id = 'towVehicle',
                icon = 'truck-pickup',
                label = 'Tow Vehicle',
                event = 'qb-tow:client:TowVehicle',
            },
        },
        courier = {
            {
                id = 'jobTablet',
                icon = 'tablet-screen-button',
                label = 'Amazon Tablet',
                event = 'ss_courierjob:client:useTablet',
                keepOpen = false,
            },
        },
    },

    gangItems = {},

    vehicleDoors = {
        id = 'vehicleDoors',
        icon = 'car-side',
        label = 'Vehicle Doors',
        items = {
            {
                id = 'door0',
                icon = 'car-side',
                label = 'Driver\'s Door',
                event = 'qb-radialmenu:client:openDoor',
                args = 0,
            },
            {
                id = 'door1',
                icon = 'car-side',
                label = 'Passenger\'s Door',
                event = 'qb-radialmenu:client:openDoor',
                args = 1,
            },
            {
                id = 'door2',
                icon = 'car-side',
                label = 'Back Left Door',
                event = 'qb-radialmenu:client:openDoor',
                args = 2,
            },
            {
                id = 'door3',
                icon = 'car-side',
                label = 'Back Right Door',
                event = 'qb-radialmenu:client:openDoor',
                args = 3,
            },
            {
                id = 'door4',
                icon = 'car-side',
                label = 'Hood',
                event = 'qb-radialmenu:client:openDoor',
                args = 4,
            },
            {
                id = 'door5',
                icon = 'car-side',
                label = 'Trunk',
                event = 'qb-radialmenu:client:openDoor',
                args = 5,
            },
        },
    },

    vehicleSeats = {
        id = 'vehicleSeats',
        icon = 'chair',
        label = 'Vehicle Seats',
        menu = 'vehicleSeatsMenu'
    },

    vehicleExtras = {
        id = 'vehicleExtras',
        icon = 'plus',
        label = 'Vehicle Extras',
        items = {
            {
                id = 'extra1',
                icon = 'box-open',
                label = 'Extra 1',
                event = 'radialmenu:client:setExtra',
                args = 1,
            },
            {
                id = 'extra2',
                icon = 'box-open',
                label = 'Extra 2',
                event = 'radialmenu:client:setExtra',
                args = 2,
            },
            {
                id = 'extra3',
                icon = 'box-open',
                label = 'Extra 3',
                event = 'radialmenu:client:setExtra',
                args = 3,
            },
            {
                id = 'extra4',
                icon = 'box-open',
                label = 'Extra 4',
                event = 'radialmenu:client:setExtra',
                args = 4,
            },
            {
                id = 'extra5',
                icon = 'box-open',
                label = 'Extra 5',
                event = 'radialmenu:client:setExtra',
                args = 5,
            },
            {
                id = 'extra6',
                icon = 'box-open',
                label = 'Extra 6',
                event = 'radialmenu:client:setExtra',
                args = 6,
            },
            {
                id = 'extra7',
                icon = 'box-open',
                label = 'Extra 7',
                event = 'radialmenu:client:setExtra',
                args = 7,
            },
            {
                id = 'extra8',
                icon = 'box-open',
                label = 'Extra 8',
                event = 'radialmenu:client:setExtra',
                args = 8,
            },
            {
                id = 'extra9',
                icon = 'box-open',
                label = 'Extra 9',
                event = 'radialmenu:client:setExtra',
                args = 9,
            },
            {
                id = 'extra10',
                icon = 'box-open',
                label = 'Extra 10',
                event = 'radialmenu:client:setExtra',
                args = 10,
            },
            {
                id = 'extra11',
                icon = 'box-open',
                label = 'Extra 11',
                event = 'radialmenu:client:setExtra',
                args = 11,
            },
            {
                id = 'extra12',
                icon = 'box-open',
                label = 'Extra 12',
                event = 'radialmenu:client:setExtra',
                args = 12,
            },
            {
                id = 'extra13',
                icon = 'box-open',
                label = 'Extra 13',
                event = 'radialmenu:client:setExtra',
                args = 13,
            },
        },
    },

    trunkClasses = {
        [0] = {allowed = true, x = 0.0, y = -1.5, z = 0.0}, -- Coupes
        [1] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sedans
        [2] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- SUVs
        [3] = {allowed = true, x = 0.0, y = -1.5, z = 0.0}, -- Coupes
        [4] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Muscle
        [5] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sports Classics
        [6] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sports
        [7] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Super
        [8] = {allowed = false, x = 0.0, y = -1.0, z = 0.25}, -- Motorcycles
        [9] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Off-road
        [10] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Industrial
        [11] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Utility
        [12] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Vans
        [13] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Cycles
        [14] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Boats
        [15] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Helicopters
        [16] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Planes
        [17] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Service
        [18] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Emergency
        [19] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Military
        [20] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Commercial
        [21] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Trains
    },

    clothingCommands = {
        top = {
            Func = function() ToggleClothing({'Top'}) end,
            Sprite = 'top',
            Desc = 'Take your shirt off/on',
            Button = 1,
            Name = 'Torso',
        },
        gloves = {
            Func = function() ToggleClothing({'Gloves'}) end,
            Sprite = 'gloves',
            Desc = 'Take your gloves off/on',
            Button = 2,
            Name = 'Gloves',
        },
        visor = {
            Func = function() ToggleProps({'Visor'}) end,
            Sprite = 'visor',
            Desc = 'Toggle hat variation',
            Button = 3,
            Name = 'Visor',
        },
        bag = {
            Func = function() ToggleClothing({'Bag'}) end,
            Sprite = 'bag',
            Desc = 'Opens or closes your bag',
            Button = 8,
            Name = 'Bag',
        },
        shoes = {
            Func = function() ToggleClothing({'Shoes'}) end,
            Sprite = 'shoes',
            Desc = 'Take your shoes off/on',
            Button = 5,
            Name = 'Shoes',
        },
        vest = {
            Func = function() ToggleClothing({'Vest'}) end,
            Sprite = 'vest',
            Desc = 'Take your vest off/on',
            Button = 14,
            Name = 'Vest',
        },
        hair = {
            Func = function() ToggleClothing({'Hair'}) end,
            Sprite = 'hair',
            Desc = 'Put your hair up/down',
            Button = 7,
            Name = 'Hair',
        },
        hat = {
            Func = function() ToggleProps({'Hat'}) end,
            Sprite = 'hat',
            Desc = 'Take your hat off/on',
            Button = 4,
            Name = 'Hat',
        },
        glasses = {
            Func = function() ToggleProps({'Glasses'}) end,
            Sprite = 'glasses',
            Desc = 'Take your glasses off/on',
            Button = 9,
            Name = 'Glasses',
        },
        ear = {
            Func = function() ToggleProps({'Ear'}) end,
            Sprite = 'ear',
            Desc = 'Take your ear accessory off/on',
            Button = 10,
            Name = 'Ear',
        },
        neck = {
            Func = function() ToggleClothing({'Neck'}) end,
            Sprite = 'neck',
            Desc = 'Take your neck accessory off/on',
            Button = 11,
            Name = 'Neck',
        },
        watch = {
            Func = function() ToggleProps({'Watch'}) end,
            Sprite = 'watch',
            Desc = 'Take your watch off/on',
            Button = 12,
            Name = 'Watch',
            Rotation = 5.0,
        },
        bracelet = {
            Func = function() ToggleProps({'Bracelet'}) end,
            Sprite = 'bracelet',
            Desc = 'Take your bracelet off/on',
            Button = 13,
            Name = 'Bracelet',
        },
        mask = {
            Func = function() ToggleClothing({'Mask'}) end,
            Sprite = 'mask',
            Desc = 'Take your mask off/on',
            Button = 6,
            Name = 'Mask',
        },

        pants = {
            Func = function() ToggleClothing({'Pants', true}) end,
            Sprite = 'pants',
            Desc = 'Take your pants off/on',
            Name = 'Pants',
            OffsetX = -0.04,
            OffsetY = 0.0,
        },
        shirt = {
            Func = function() ToggleClothing({'Shirt', true}) end,
            Sprite = 'shirt',
            Desc = 'Take your shirt off/on',
            Name = 'shirt',
            OffsetX = 0.04,
            OffsetY = 0.0,
        },
        reset = {
            Func = function()
                if not ResetClothing(true) then
                    Notify('Nothing To Reset', 'error')
                end
            end,
            Sprite = 'reset',
            Desc = 'Revert everything back to normal',
            Name = 'reset',
            OffsetX = 0.12,
            OffsetY = 0.2,
            Rotate = true
        },
        bagoff = {
            Func = function() ToggleClothing({'Bagoff', true}) end,
            Sprite = 'bagoff',
            SpriteFunc = function()
                local Bag = GetPedDrawableVariation(cache.ped, 5)
                local BagOff = LastEquipped['Bagoff']
                if LastEquipped['Bagoff'] then
                    if bags[BagOff.Drawable] then
                        return 'bagoff'
                    else
                        return 'paraoff'
                    end
                end
                if Bag ~= 0 then
                    if bags[Bag] then
                        return 'bagoff'
                    else
                        return 'paraoff'
                    end
                else
                    return false
                end
            end,
            Desc = 'Take your bag off/on',
            Name = 'bagoff',
            OffsetX = -0.12,
            OffsetY = 0.2,
        }
    },
}
