.class public Landroidx/slice/widget/LargeSliceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LargeSliceAdapter.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;,
        Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mAttrs:Landroid/util/AttributeSet;

.field private mColor:I

.field private final mContext:Landroid/content/Context;

.field private mDefStyleAttr:I

.field private mDefStyleRes:I

.field private final mIdGen:Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

.field private mLastUpdated:J

.field private mParent:Landroidx/slice/widget/SliceView;

.field private mShowLastUpdated:Z

.field private mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field private mSlices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateView:Landroidx/slice/widget/LargeTemplateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;-><init>(Landroidx/slice/widget/LargeSliceAdapter$1;)V

    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mIdGen:Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/slice/widget/LargeSliceAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method private notifyHeaderChanged()V
    .locals 1

    invoke-virtual {p0}, Landroidx/slice/widget/LargeSliceAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setLastUpdated(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLastUpdated:J

    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyHeaderChanged()V

    return-void
.end method

.method public setParents(Landroidx/slice/widget/SliceView;Landroidx/slice/widget/LargeTemplateView;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    iput-object p2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mTemplateView:Landroidx/slice/widget/LargeTemplateView;

    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mShowLastUpdated:Z

    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyHeaderChanged()V

    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSliceActions:Ljava/util/List;

    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyHeaderChanged()V

    return-void
.end method

.method public setSliceItems(Ljava/util/List;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;II)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mIdGen:Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

    invoke-virtual {v0}, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->resetUsage()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    iget-object v2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    new-instance v3, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter;->mIdGen:Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

    invoke-direct {v3, v1, v4, p3}, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;-><init>(Landroidx/slice/SliceItem;Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    iput p2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mColor:I

    invoke-virtual {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSliceObserver(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    return-void
.end method

.method public setStyle(Landroid/util/AttributeSet;II)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mAttrs:Landroid/util/AttributeSet;

    iput p2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mDefStyleAttr:I

    iput p3, p0, Landroidx/slice/widget/LargeSliceAdapter;->mDefStyleRes:I

    invoke-virtual {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyDataSetChanged()V

    return-void
.end method
