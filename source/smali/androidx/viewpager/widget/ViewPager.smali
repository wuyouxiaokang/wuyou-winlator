.class public abstract Landroidx/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;,
        Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    }
.end annotation


# virtual methods
.method public abstract addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V
.end method

.method public abstract addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
.end method

.method public abstract getAdapter()Landroidx/viewpager/widget/PagerAdapter;
.end method

.method public abstract getCurrentItem()I
.end method

.method public abstract setCurrentItem(I)V
.end method
