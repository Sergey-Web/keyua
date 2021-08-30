<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Product as ProductModel;

class Product extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'product:get {ids}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $product = ProductModel::find(2);

        foreach($product->categories as $item) {
            var_dump($item->name);die;
        }
    }
}
