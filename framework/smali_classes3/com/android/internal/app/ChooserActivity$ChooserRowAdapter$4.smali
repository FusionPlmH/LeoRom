.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$4;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/app/ChooserActivity$RowViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field final synthetic val$column:I

.field final synthetic val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$4;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$4;->val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    iput p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$4;->val$column:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$4;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$4;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$800(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$4;->val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$4;->val$column:I

    aget v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$4;->val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    iget v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$4;->val$column:I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;I)V

    return v3
.end method
