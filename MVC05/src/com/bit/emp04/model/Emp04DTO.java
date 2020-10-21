package com.bit.emp04.model;

public class Emp04DTO {
	private int sabun, lvl;
	private String name;
	
	public Emp04DTO() {
	}

	public Emp04DTO(int sabun, int lvl, String name) {
		super();
		this.sabun = sabun;
		this.lvl = lvl;
		this.name = name;
	}

	public int getSabun() {
		return sabun;
	}

	public void setSabun(int sabun) {
		this.sabun = sabun;
	}

	public int getLvl() {
		return lvl;
	}

	public void setLvl(int lvl) {
		this.lvl = lvl;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + lvl;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + sabun;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Emp04DTO other = (Emp04DTO) obj;
		if (lvl != other.lvl)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (sabun != other.sabun)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Emp04DTO [sabun=" + sabun + ", lvl=" + lvl + ", name=" + name
				+ "]";
	}
	
}
