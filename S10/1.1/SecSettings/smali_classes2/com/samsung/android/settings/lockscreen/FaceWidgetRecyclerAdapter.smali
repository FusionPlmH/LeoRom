.class public Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FaceWidgetRecyclerAdapter.java"

# interfaces
.implements Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback$OnItemMoveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FixedViewInfo;,
        Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerFooterViewHolder;,
        Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerHeaderViewHolder;,
        Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerViewHolder;,
        Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;,
        Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnCheckChangeListener;,
        Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnStartDragListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback$OnItemMoveListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDragEnabled:Z

.field private mFaceWidgetsItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;",
            ">;"
        }
    .end annotation
.end field

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLockScreenDisabled:Z

.field private mListener:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnCheckChangeListener;

.field private mOnStartDragListener:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnStartDragListener;

.field private mReorderMode:Z

.field private tempString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnStartDragListener;ZZ)V
    .locals 5

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFaceWidgetsItemLists:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mReorderMode:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mDragEnabled:Z

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mIsLockScreenDisabled:Z

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mOnStartDragListener:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnStartDragListener;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mIsLockScreenDisabled:Z

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "face_widgets_option"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->addHeaderView()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->addFaceListView()V

    if-eqz p4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->addFooterView()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->hasFooter()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v1, :cond_3

    move v3, v0

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFaceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->setChecked(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFaceWidgetsItemLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;)Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnCheckChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mListener:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnCheckChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;)Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnStartDragListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mOnStartDragListener:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnStartDragListener;

    return-object v0
.end method

.method private addFaceList(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFaceWidgetListDefaultValue(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFaceWidgetInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFaceWidgetInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->addItem(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private addFaceListView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getAllFaceWidgetInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->addFaceList(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->TAG:Ljava/lang/String;

    const-string v2, "addFaceListView failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private addFooterView()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FixedViewInfo;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FixedViewInfo;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addHeaderView()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FixedViewInfo;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FixedViewInfo;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addItem(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;->setChecked(Z)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFaceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isFooterViewPosition(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->hasFooter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFaceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isHeaderViewPosition(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;Landroid/widget/CompoundButton;Z)V
    .locals 3

    xor-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "face_widgets_option"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v1, 0x1eab

    const/16 v2, 0x116f

    invoke-static {v1, v2, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method

.method private makeDBSet(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->tempString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->tempString:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->tempString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->tempString:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->tempString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->tempString:Ljava/lang/String;

    return-void
.end method

.method private saveListOrder()V
    .locals 4

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->tempString:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFaceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFaceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->makeDBSet(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "face_widget_order"

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->tempString:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public getDragEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mReorderMode:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mDragEnabled:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mDragEnabled:Z

    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mDragEnabled:Z

    return v1
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFaceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->isHeaderViewPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->isFooterViewPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getPositionByKey(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFaceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFaceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;->getKey()Ljava/lang/String;

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

.method public hasFooter()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method moveItem(II)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p2, v1

    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFaceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFaceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFaceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Negative position in moveItem %d -> %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->notifyItemMoved(II)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->saveListOrder()V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    instance-of v0, p1, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerHeaderViewHolder;

    const v1, 0x7f0601b2

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerHeaderViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerHeaderViewHolder;->getHeaderView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    const v2, 0x7f0a0639

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    const v1, 0x7f0a0638

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mIsLockScreenDisabled:Z

    if-eqz v5, :cond_0

    const v5, 0x7f0805bf

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const v5, 0x7f0805bd

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f0805c0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v5, 0x7f0805be

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const v5, 0x7f0a022c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    if-eqz v4, :cond_4

    iget-boolean v6, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mIsLockScreenDisabled:Z

    if-eqz v6, :cond_3

    const v6, 0x7f121337

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    const v6, 0x7f1200bc

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    const v6, 0x7f1200ba

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    instance-of v0, p1, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerFooterViewHolder;

    const/4 v3, 0x1

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerFooterViewHolder;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerFooterViewHolder;->getFooterView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0916

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0914

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "face_widgets_option"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_7

    move v7, v3

    goto :goto_2

    :cond_7
    move v7, v2

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    const v8, 0x7f0a0915

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aod_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-static {v9, v10, v2, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v3, :cond_8

    move v2, v3

    nop

    :cond_8
    invoke-virtual {v6, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v2, :cond_9

    new-instance v3, Lcom/samsung/android/settings/lockscreen/-$$Lambda$FaceWidgetRecyclerAdapter$TCaMBKoXjXCguWBZXDtQcXOD54Y;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/lockscreen/-$$Lambda$FaceWidgetRecyclerAdapter$TCaMBKoXjXCguWBZXDtQcXOD54Y;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;)V

    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v3, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$1;

    invoke-direct {v3, p0, v6}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$1;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;Landroid/widget/Switch;)V

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    goto :goto_4

    :cond_a
    invoke-virtual {v6, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    :goto_4
    const v2, 0x7f12152f

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v2, 0xf

    invoke-virtual {v8, v2}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v8, v2, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    return-void

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v0, p2, v0

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerViewHolder;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFaceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerViewHolder;->getFaceWidgetDragCell()Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setLabelAndDescription(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mReorderMode:Z

    xor-int/2addr v6, v3

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setShowCheckbox(Z)V

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setKey(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;->getChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setChecked(Z)V

    iget-boolean v6, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mReorderMode:Z

    if-eqz v6, :cond_c

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setClickable(Z)V

    goto :goto_5

    :cond_c
    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setClickable(Z)V

    new-instance v2, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$2;

    invoke-direct {v2, p0, v5}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$2;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;)V

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->getSwitch()Landroid/widget/Switch;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$3;

    invoke-direct {v3, p0, v5}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$3;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->getDragEnabled()Z

    move-result v2

    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setDragHandlerPadding(Z)V

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->getDndHandler()Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$4;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$4;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d011b

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerHeaderViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerHeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0192

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerFooterViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerFooterViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0190

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public onItemMove(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->moveItem(II)V

    return-void
.end method

.method public setChecked(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mFaceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$FaceWidgetItems;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFaceWidgetInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method setReorderMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->mReorderMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method
