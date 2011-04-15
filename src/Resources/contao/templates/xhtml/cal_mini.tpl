
<table class="minicalendar">
<thead>
  <tr>
    <th class="head previous"><a href="<?php echo $this->prevHref; ?>" rel="nofollow" title="<?php echo $this->prevTitle; ?>"><?php echo $this->prevLabel; ?></a></th>
    <th colspan="5" class="head current"><?php echo $this->current; ?></th>
    <th class="head next"><a href="<?php echo $this->nextHref; ?>" rel="nofollow" title="<?php echo $this->nextTitle; ?>"><?php echo $this->nextLabel; ?></a></th>
  </tr>
  <tr>
<?php foreach ($this->days as $i=>$day): ?>
    <th class="label<?php if ($i == 0 || $i == 6) echo ' weekend'; ?>"><?php echo utf8_substr($day, 0, 2); ?></th>
<?php endforeach; ?>
  </tr>
</thead>
<tbody>
<?php foreach ($this->weeks as $class=>$week): ?>
  <tr class="<?php echo $class; ?>">
<?php foreach ($week as $day): ?>
<?php if ($day['href']): ?>
    <td class="<?php echo $day['class']; ?>"><a href="<?php echo $day['href']; ?>" title="<?php echo $day['title']; ?>"><?php echo $day['label']; ?></a></td>
<?php else: ?>
    <td class="<?php echo $day['class']; ?>"><?php echo $day['label']; ?></td>
<?php endif; ?>
<?php endforeach; ?>
  </tr>
<?php endforeach; ?>
</tbody>
</table>
