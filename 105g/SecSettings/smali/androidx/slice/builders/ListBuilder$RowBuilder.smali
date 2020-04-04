.class public Landroidx/slice/builders/ListBuilder$RowBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowBuilder"
.end annotation


# instance fields
.field private mHasDefaultToggle:Z

.field private mHasEndActionOrToggle:Z

.field private mHasEndImage:Z

.field private mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;


# direct methods
.method public constructor <init>(Landroidx/slice/builders/ListBuilder;)V
    .locals 1

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder;->access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/builders/impl/ListBuilder;->createRowBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/impl/ListBuilder$RowBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    return-object v0
.end method


# virtual methods
.method public addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addEndItem(Landroidx/slice/builders/SliceAction;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2

    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasEndImage:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasDefaultToggle:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;Z)V

    invoke-virtual {p1}, Landroidx/slice/builders/SliceAction;->getImpl()Landroidx/slice/core/SliceActionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isDefaultToggle()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasDefaultToggle:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasEndActionOrToggle:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one non-custom toggle can be added in a single row. If you would like to include multiple toggles in a row, set a custom icon for each toggle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add an action to end items when anicon has already been added. End items cannot have a mixture of actions and icons."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    return-void
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)V

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;Z)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V

    return-object p0
.end method
