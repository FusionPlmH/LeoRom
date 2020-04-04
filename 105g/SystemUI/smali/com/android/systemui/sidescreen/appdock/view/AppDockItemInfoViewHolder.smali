.class public Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AppDockItemInfoViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo$ItemCallback;


# instance fields
.field mAdapter:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListViewAdapter;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mIconView:Landroid/widget/ImageView;

.field private mItemInfo:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

.field private final mNotSupportedReason:[I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mNotSupportedReason:[I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mNotSupportedReason:[I

    const/4 v1, 0x0

    const v2, 0x7f120318

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mNotSupportedReason:[I

    const/4 v1, 0x1

    const v2, 0x7f120319

    aput v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;)Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    return-object v0
.end method


# virtual methods
.method public animateIconLoaded(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder$1;-><init>(Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public onAppDataLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->animateIconLoaded(Landroid/view/View;)V

    return-void
.end method

.method public onBind(Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListViewAdapter;Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mAdapter:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListViewAdapter;

    iput-object p2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    invoke-virtual {v0, p0}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->setCallback(Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo$ItemCallback;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->loadAppInfoData(Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;)V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->updateView()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getMultiWindowState()Lcom/android/systemui/dnd/MultiWindowState;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/dnd/MultiWindowState;->fullscreenSupportMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mNotSupportedReason:[I

    invoke-static {}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getMultiWindowState()Lcom/android/systemui/dnd/MultiWindowState;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/dnd/MultiWindowState;->fullscreenSupportMode:I

    aget v2, v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x5

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->startApp(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/sidescreen/appdock/event/DismissAppDockEvent;

    invoke-direct {v2}, Lcom/android/systemui/sidescreen/appdock/event/DismissAppDockEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    const/4 v0, 0x0

    return v0
.end method

.method public onUnbind()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->setCallback(Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo$ItemCallback;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method public removeTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mAdapter:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListViewAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListViewAdapter;->removeItem(I)V

    return-void
.end method

.method public resetViewAttrs(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public updateView()V
    .locals 9

    const-string v0, "info=%s, isDisabled=%b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    invoke-virtual {v2}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    invoke-virtual {v2}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->isDisabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/android/systemui/sidescreen/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    invoke-virtual {v2}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    invoke-virtual {v2}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    invoke-virtual {v1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f060021

    goto :goto_0

    :cond_0
    const v1, 0x7f060023

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    invoke-virtual {v2}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f060022

    goto :goto_1

    :cond_1
    const v2, 0x7f060024

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v6, v7}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v8, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v5, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mItemInfo:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    invoke-virtual {v5}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->isDisabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_2
    return-void
.end method
