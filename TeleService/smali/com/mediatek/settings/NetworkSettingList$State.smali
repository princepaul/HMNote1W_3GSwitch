.class public final enum Lcom/mediatek/settings/NetworkSettingList$State;
.super Ljava/lang/Enum;
.source "NetworkSettingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/NetworkSettingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/settings/NetworkSettingList$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/settings/NetworkSettingList$State;

.field public static final enum THREEORFOURG:Lcom/mediatek/settings/NetworkSettingList$State;

.field public static final enum TWOG:Lcom/mediatek/settings/NetworkSettingList$State;

.field public static final enum UNKNOWN:Lcom/mediatek/settings/NetworkSettingList$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    new-instance v0, Lcom/mediatek/settings/NetworkSettingList$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/settings/NetworkSettingList$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/settings/NetworkSettingList$State;->UNKNOWN:Lcom/mediatek/settings/NetworkSettingList$State;

    .line 126
    new-instance v0, Lcom/mediatek/settings/NetworkSettingList$State;

    const-string v1, "TWOG"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/settings/NetworkSettingList$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/settings/NetworkSettingList$State;->TWOG:Lcom/mediatek/settings/NetworkSettingList$State;

    .line 127
    new-instance v0, Lcom/mediatek/settings/NetworkSettingList$State;

    const-string v1, "THREEORFOURG"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/settings/NetworkSettingList$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/settings/NetworkSettingList$State;->THREEORFOURG:Lcom/mediatek/settings/NetworkSettingList$State;

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mediatek/settings/NetworkSettingList$State;

    sget-object v1, Lcom/mediatek/settings/NetworkSettingList$State;->UNKNOWN:Lcom/mediatek/settings/NetworkSettingList$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/settings/NetworkSettingList$State;->TWOG:Lcom/mediatek/settings/NetworkSettingList$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/settings/NetworkSettingList$State;->THREEORFOURG:Lcom/mediatek/settings/NetworkSettingList$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/settings/NetworkSettingList$State;->$VALUES:[Lcom/mediatek/settings/NetworkSettingList$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/settings/NetworkSettingList$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    const-class v0, Lcom/mediatek/settings/NetworkSettingList$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/NetworkSettingList$State;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/settings/NetworkSettingList$State;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/mediatek/settings/NetworkSettingList$State;->$VALUES:[Lcom/mediatek/settings/NetworkSettingList$State;

    invoke-virtual {v0}, [Lcom/mediatek/settings/NetworkSettingList$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/settings/NetworkSettingList$State;

    return-object v0
.end method
