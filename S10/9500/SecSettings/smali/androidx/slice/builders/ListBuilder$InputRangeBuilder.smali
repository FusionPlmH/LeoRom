.class public Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputRangeBuilder"
.end annotation


# instance fields
.field private mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;


# direct methods
.method public constructor <init>(Landroidx/slice/builders/ListBuilder;)V
    .locals 1

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder;->access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/builders/impl/ListBuilder;->createInputRangeBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    return-object v0
.end method


# virtual methods
.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    return-void
.end method

.method public setInputAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setInputAction(Landroid/app/PendingIntent;)V

    return-object p0
.end method

.method public setMax(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setMax(I)V

    return-object p0
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)V

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setSubtitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setValue(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setValue(I)V

    return-object p0
.end method
