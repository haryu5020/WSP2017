package user;

public class userBean{
	private String login_id;
	private String passwd;
	private String name;
	private String favorite;
	private String job;
	private String profile_path;
	
	public String getLoginID()
	{
		return this.login_id;
	}
	public String getPassword()
	{
		return this.passwd;
	}
	public String getName()
	{
		return this.name;
	}
	public String getFavorite()
	{
		return this.favorite;
	}
	public String getJob()
	{
		return this.job;
	}
	public String getProfile()
	{
		return this.profile_path;
	}
	public void setLoginID(String id)
	{
		this.login_id = id;
	}
	public void setPassword(String pw)
	{
		this.passwd = pw;
	}
	public void setName(String name)
	{
		this.name=name;
	}
	public void setFavorite(String favorite)
	{
		this.favorite = favorite;
	}
	public void setJob(String job)
	{
		this.job = job;
	}
	public void setPath(String path)
	{
		this.profile_path = path;
	}
}