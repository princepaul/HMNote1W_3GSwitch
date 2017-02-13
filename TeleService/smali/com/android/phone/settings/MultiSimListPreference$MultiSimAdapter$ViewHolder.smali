.class Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MultiSimListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field simDiplayName:Landroid/widget/CheckedTextView;

.field simIcon:Landroid/widget/ImageView;

.field simNumber:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;


# direct methods
.method private constructor <init>(Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;->this$1:Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;Lcom/android/phone/settings/MultiSimListPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;
    .param p2, "x1"    # Lcom/android/phone/settings/MultiSimListPreference$1;

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter$ViewHolder;-><init>(Lcom/android/phone/settings/MultiSimListPreference$MultiSimAdapter;)V

    return-void
.end method
