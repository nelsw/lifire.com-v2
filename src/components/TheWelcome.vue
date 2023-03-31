<script setup lang="ts">
import WelcomeItem from './WelcomeItem.vue'
import DocumentationIcon from './icons/IconDocumentation.vue'
import ToolingIcon from './icons/IconTooling.vue'
import EcosystemIcon from './icons/IconEcosystem.vue'
import CommunityIcon from './icons/IconCommunity.vue'
import SupportIcon from './icons/IconSupport.vue'
import IconFireTruck from '@/components/icons/IconFireTruck.vue'
import IconFireCar from '@/components/icons/IconFireCar.vue'
import IconFirePlaceholder from '@/components/icons/IconFirePlaceholder.vue'
</script>

<template>
  <WelcomeItem>
    <template #icon>
      <IconFireTruck />
    </template>
    <template #heading>Fire Departments</template>
    Li-Fire reduces water use, saves time, and decrease the environmental impact of hazardous EV fire.
  </WelcomeItem>

  <WelcomeItem>
    <template #icon>
      <IconFireCar />
    </template>
    <template #heading>Repair Shops</template>
    Cars with errors or that have been involved in an accident have a greater chance of self-igniting, sometimes weeks later.
  </WelcomeItem>

  <WelcomeItem>
    <template #icon>
      <IconFirePlaceholder />
    </template>
    <template #heading>Private & Public Parking</template>
    Li-Fire blankets are the first line of defense in quickly and safely isolating the fire in lithium-powered vehicles and to prevent spread.
  </WelcomeItem>
</template>
