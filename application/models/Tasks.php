<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Tasks extends MY_Model
{
    public function rules()
{
    $config = array(
            ['field' => 'task', 'label' => 'TODO task', 'rules' => 'alpha_numeric_spaces|max_length[64]'],
            ['field' => 'priority', 'label' => 'Priority', 'rules' => 'integer|less_than[4]'],
            ['field' => 'size', 'label' => 'Task size', 'rules' => 'integer|less_than[4]'],
            ['field' => 'group', 'label' => 'Task group', 'rules' => 'integer|less_than[5]'],
            ['field' => 'status', 'label' => 'Task status', 'rules' => 'integer|less_than[5]'],
    );
    return $config;
}
    public function __construct()
    {
        
        parent::__construct('tasks', 'id');
    }
    function getCategorizedTasks()
    {
        
        foreach ($this->all() as $task)
        {
            if ($task->status != 2)
                $undone[] = $task;
        }
   
        foreach ($undone as $task)
            $task->group = $this->groups->get($task->group)->name;
    
        usort($undone, "orderByCategory");
        
        foreach ($undone as $task)
            $converted[] = (array) $task;
        return $converted;
    }
}
function orderByPriority($a, $b)
{
    if ($a->priority > $b->priority)
        return -1;
    elseif ($a->priority < $b->priority)
        return 1;
    else
        return 0;
}