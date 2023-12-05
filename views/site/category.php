<?php
use yii\helpers\Url;
use yii\widgets\LinkPager;

?>
<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <?php

                foreach ($articles as $article):?>
                    <article class="post post-list">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="post-thumb">
                                    <a href="<?= Url::toRoute(['site/view', 'id'=>$article->id]);?>"><img src="<?= $article->getImage1();?>" alt=""
                                                             class="pull-left"></a>

                                    <a href="<?= Url::toRoute(['site/view', 'id'=>$article->id]);?>" class="post-thumb-overlay text-center">
                                        <div class="text-uppercase text-center">View Post</div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="post-content">
                                    <header class="entry-header text-uppercase">
                                        <h6><a href="<?= Url::toRoute(['site/category', 'id'=>$article->category->id]);?>"> <?=$article->category->title?></a></h6>

                                        <h1 class="entry-title"><a href="<?= Url::toRoute(['site/view', 'id'=>$article->id]);?>">Home is peaceful place</a></h1>
                                    </header>
                                    <div class="entry-content">
                                        <p><?= $article->description?>
                                        </p>
                                    </div>
                                    <div class="social-share">
                                        <span class="social-share-title pull-left text-capitalize">By Rubel On <?= $article->getDate();?></span>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </article>
                <?php endforeach; ?>
<!--                <div class="row">-->
<!--                    <div class="col-md-6">-->
<!--                        <div class="post-thumb">-->
<!--                            <a href="blog.html"><img src="./../public/images/blog-grid.jpg" alt=""-->
<!--                                                     class="pull-left"></a>-->
<!---->
<!--                            <a href="blog.html" class="post-thumb-overlay text-center">-->
<!--                                <div class="text-uppercase text-center">View Post</div>-->
<!--                            </a>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                    <div class="col-md-6">-->
<!--                        <div class="post-content">-->
<!--                            <header class="entry-header text-uppercase">-->
<!--                                <h6><a href="#"> Travel</a></h6>-->
<!---->
<!--                                <h1 class="entry-title"><a href="blog.html">Home is peaceful place</a></h1>-->
<!--                            </header>-->
<!--                            <div class="entry-content">-->
<!--                                <p>Lorem ipsum dolor sit amet, consadipsinesed diam nonumy eirmod tevidubore et-->
<!--                                </p>-->
<!--                            </div>-->
<!--                            <div class="social-share">-->
<!--                                <span class="social-share-title pull-left text-capitalize">By Rubel On November 29, 2023</span>-->
<!---->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
                </article>
                <?php

                echo LinkPager::widget([
                    'pagination' => $pagination,
                ]);
                ?>
            </div>
            <div class="col-md-4" data-sticky_column>
                <div class="primary-sidebar">

                    <aside class="widget">
                        <h3 class="widget-title text-uppercase text-center">Popular Posts</h3>
                        <?php foreach ($popular as $article): ?>

                            <div class="popular-post">


                                <a href="#" class="popular-img"><img src="<?= $article->getImage1(); ?>" alt="">

                                    <div class="p-overlay"></div>
                                </a>

                                <div class="p-content">
                                    <a href="#" class="text-uppercase"><?= $article->title ?></a>
                                    <span class="p-date"><?= $article->getDate(); ?></span>

                                </div>
                            </div>

                        <?php endforeach; ?>

                    </aside>
                    <aside class="widget pos-padding">
                        <h3 class="widget-title text-uppercase text-center">Recent Posts</h3>
                        <?php foreach ($recent as $article): ?>
                            <div class="thumb-latest-posts">


                                <div class="media">
                                    <div class="media-left">
                                        <a href="#" class="popular-img"><img src="<?=$article->getImage1();?>" alt="">
                                            <div class="p-overlay"></div>
                                        </a>
                                    </div>
                                    <div class="p-content">
                                        <a href="#" class="text-uppercase"><?=$article->title?></a>
                                        <span class="p-date"><?=$article->getDate();?></span>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>


                        <div class="media">
                            <div class="media-left">
                            </div>
                        </div>
                </div>
                </aside>
                <aside class="widget border pos-padding">
                    <h3 class="widget-title text-uppercase text-center">Categories</h3>
                    <ul>
                        <?php foreach ($categories as $category):?>
                            <li>
                                <a href="#">Food & Drinks</a>
                                <span class="post-count pull-right">(<?= $category->getArticlesCount();?>)</span>
                            </li>
                        <?php endforeach;?>
                    </ul>
                </aside>
            </div>
        </div>
    </div>
</div>
<!-- end main content-->
