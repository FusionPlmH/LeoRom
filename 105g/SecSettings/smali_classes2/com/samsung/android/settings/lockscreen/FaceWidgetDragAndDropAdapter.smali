.class Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;
.super Landroid/widget/BaseAdapter;
.source "FaceWidgetDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$OnCheckChangeListener;,
        Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;,
        Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;
    }
.end annotation


# instance fields
.field private faceWidgetsItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDragEnabled:Z

.field private mListener:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$OnCheckChangeListener;

.field private mReorderMode:Z


# direct methods
.method static synthetic access$000(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$OnCheckChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mListener:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$OnCheckChangeListener;

    return-object v0
.end method

.method public static createDbKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x55117438

    if-eq v1, v2, :cond_2

    const v2, -0x54640064

    if-eq v1, v2, :cond_1

    const v2, 0x21ca6267

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "servicebox_calendar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "servicebox_music"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "servicebox_alarm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    if-nez p2, :cond_7

    invoke-static {p0, p1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :pswitch_0
    if-nez p2, :cond_4

    const v1, 0x7f120f3e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v1, "add_info_alarm"

    :goto_2
    move-object v0, v1

    goto :goto_6

    :pswitch_1
    if-nez p2, :cond_5

    const v1, 0x7f121a7a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    const-string v1, "add_info_today_schedule"

    :goto_3
    move-object v0, v1

    goto :goto_6

    :pswitch_2
    if-nez p2, :cond_6

    const v1, 0x7f120515

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    const-string v1, "add_info_music_control"

    :goto_4
    move-object v0, v1

    goto :goto_6

    :cond_7
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->createDbKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    move-object v0, v1

    :goto_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDragEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mReorderMode:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mDragEnabled:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mDragEnabled:Z

    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mDragEnabled:Z

    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPositionByKey(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0190

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;->getFaceWidgetDragCell()Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setLabelAndDescription(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mReorderMode:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setShowCheckbox(Z)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setChecked(Z)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mReorderMode:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setClickable(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setClickable(Z)V

    new-instance v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->getSwitch()Landroid/widget/Switch;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$2;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$2;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;)V

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getDragEnabled()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setDragHandlerPadding(Z)V

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setChecked(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
