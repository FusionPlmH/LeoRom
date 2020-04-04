.class Lcom/samsung/android/settings/flipfont/FontListAdapter$1;
.super Ljava/lang/Object;
.source "FontListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/flipfont/FontListAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/flipfont/FontListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/flipfont/FontListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$1;->this$0:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iput p2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$1;->this$0:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->access$000(Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter$1;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method
