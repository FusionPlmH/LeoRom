.class public Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppShortcutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/AppShortcutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/AppShortcutList;Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->setSelected(Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;)V

    return-void
.end method

.method private createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01e0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter$1;-><init>(Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private setSelected(Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->saveApplicationData(Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v2, 0x7f0a008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a008b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    const v5, 0x3fa66666    # 1.3f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    const v4, 0x3fa66666    # 1.3f

    :cond_1
    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v5, v4

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;

    iget-object v5, v5, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;

    iget-object v5, v5, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;

    iget-object v5, v5, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;

    iget-object v5, v5, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/AppShortcutList;

    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->access$200(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    const v7, 0x7f0a008c

    if-eqz v5, :cond_4

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;

    iget-boolean v5, v5, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;->mIsActive:Z

    if-ne v5, v6, :cond_4

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    const v5, 0x3ebd70a4    # 0.37f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_1
    return-object v1
.end method
