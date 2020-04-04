.class public Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NewModePreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/NewModePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenModeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;,
        Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;",
            ">;"
        }
    .end annotation
.end field

.field mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

.field mSelectValue:I

.field final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;Landroid/content/Context;Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;I)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    iput p4, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mSelectValue:I

    invoke-direct {p0}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->addScreenModeListView()V

    return-void
.end method

.method private addScreenModeList(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;-><init>(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->setValue(I)V

    iget v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mSelectValue:I

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private addScreenModeListView()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-static {v2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->access$400(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-static {v2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->access$500(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->addScreenModeList(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "ModePreview"

    const-string v1, "addScreenModeListView failed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPositionFromValue(J)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-static {v1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->access$500(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;

    iget-object v0, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;

    iget-object v0, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;->mCheckBoxView:Lcom/android/settings/CheckableLinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->getChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/CheckableLinearLayout;->setChecked(Z)V

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;-><init>(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0257

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$RecyclerViewHolder;-><init>(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setChecked(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->setChecked(Z)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->setChecked(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->notifyDataSetChanged()V

    return-void
.end method
