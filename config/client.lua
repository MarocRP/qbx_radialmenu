return {
    flipTime = 15000,
    menuItems = {
        {
            id = 'clothing',
            icon = 'shirt',
            label = 'Clothing',
            items = {
                {
                    id = 'dressingMenu',
                    icon = 'person-dress',
                    label = 'Dressing Menu',
                    onSelect = function()
                        TriggerEvent('ss_dresser:client:openWheel')
                        lib.hideRadial()
                    end
                },
            },
        },
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
        firefighter = {
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
}
