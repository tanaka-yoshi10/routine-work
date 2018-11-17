<template>
  <div class="form-group string optional routine_rrule form-group-valid">
    <label for="routine_rrule" class="form-control-label string optional">Rrule</label>
    <input v-model='rule' type="text" name="routine[rrule]" id="routine_rrule" class="form-control is-valid string optional" data-com.agilebits.onepassword.user-edited="yes">
    <p>{{ convert() }}</p>
  </div>
</template>

<script>
import { RRule, RRuleSet, rrulestr } from 'rrule'
export default {
  data: function () {
    return {
      rule: ""
    }
  },
  mounted: function() {
    this.rule = this.value
  },
  props: ['value'],
  methods: {
    convert: function() {
      if (this.rule) {
        const rrule = rrulestr(this.rule)
        return rrule.toText()
      }
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
